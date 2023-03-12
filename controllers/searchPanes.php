<?php

/*
 * Example PHP implementation used for the index.html example
 */

// DataTables PHP library
include( "../lib/DataTables.php" );

// Alias Editor classes so they are easy to use
use
	DataTables\Editor,
	DataTables\Editor\Field,
	DataTables\Editor\Format,
	DataTables\Editor\Mjoin,
	DataTables\Editor\Options,
	DataTables\Editor\Upload,
	DataTables\Editor\Validate,
    DataTables\Editor\ValidateOptions,
    DataTables\Editor\SearchPaneOptions;

// Build our Editor instance and process the data coming from _POST
Editor::inst( $db, 'tablesdata' )
	->field( 
        Field::inst( 'tablesdata.name' )
            ->searchPaneOptions(SearchPaneOptions::inst()
        ),
        
		Field::inst( 'tablesdata.state' )
            ->searchPaneOptions( SearchPaneOptions::inst()
            ->table( 'tablesdata' )
				->value( 'state' )
				->label( 'state' )
        ),
             
		Field::inst( 'tablesdata.job' )
            ->searchPaneOptions( SearchPaneOptions::inst()
                ->table( 'tablesdata')
                ->value( 'job' )
            ),
        Field::inst( 'tablesdata.company' )
            ->searchPaneOptions( SearchPaneOptions::inst()
				->table( 'tablesdata' )
				->value( 'company' )
				->label( 'company' )
        ),
        Field::inst( 'tablesdata.contact' )
        ->searchPaneOptions( SearchPaneOptions::inst()
            ->table( 'tablesdata' )
            ->value( 'contact' )
            ->label( 'contact' )
    )
        
           
    )
    ->debug(true)
	->process($_POST)
    ->json();