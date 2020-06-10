<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp\Client;
use Illuminate\Support\Facades\Auth;

use function GuzzleHttp\json_decode;

class RetievePosts extends Controller
{
    
    public function getPosts( Request $request ){

        $client = new Client([ 'base_uri' => 'https://sq1-api-test.herokuapp.com/' ]);
        $response = $client->request('GET', 'posts');
        $entries = json_decode($response->getBody()->getContents(), true);
        
        foreach( $entries['data'] as $entry ) {
            Auth::user()->entries()->create([
                'title' => $entry['title'],
                'description' => $entry['description'],
                'created_at' => $entry['publication_date'],
                ]);
        }

        return redirect('myEntries')->with('status', 'Posts retrieved successfully!');;
    }

}
