<?php

use App\Entry;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

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
        for ($i = 0, $iMax = 2; $i < $iMax; $i++) {
            sleep(1);
            $user->entries()->save(factory(Entry::class)->make());
        }

        factory(App\User::class, 15)->create()->each(function ($user) {
            for ($i = 0, $iMax = rand(2, 3); $i < $iMax; $i++) {
                sleep(1);
                $user->entries()->save(factory(Entry::class)->make());
            }
        });
    }
}
