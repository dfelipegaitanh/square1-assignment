<?php

use App\Entry;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;
use GuzzleHttp\Client;

use function GuzzleHttp\json_decode;

class DatabaseSeeder extends Seeder
{

    
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        
        $user = new App\User;
        $user->fill(
            [
                'name'              => 'Admin User',
                'username'          => 'admin',
                'email'             => 'admin@admin.com',
                'email_verified_at' => now(),
                'password'          => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
                'remember_token'    => Str::random(10),
            ]
        )->save();

        $client = new Client([ 'base_uri' => 'https://sq1-api-test.herokuapp.com/' ]);
        $response = $client->request('GET', 'posts');
        $entries = json_decode($response->getBody()->getContents(), true);
        
        foreach( $entries['data'] as $entry ) {
            $user->entries()->create([
                'title' => $entry['title'],
                'description' => $entry['description'],
                'created_at' => $entry['publication_date'],
                ]);
        }

        factory(App\User::class, 15)->create()->each(function ($user) {
            for ($i = 0, $iMax = rand(2, 3); $i < $iMax; $i++) {
                sleep(1);
                $user->entries()->save(factory(Entry::class)->make());
            }
        });
    }
}
