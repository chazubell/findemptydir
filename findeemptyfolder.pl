#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: findeemptyfolder.pl
#
#        USAGE: ./findeemptyfolder.pl  
#
#  DESCRIPTION: Searching for empty folders and then:
#  1) ask if it should be delted y/n
#  2) ask if all the rest should be deleted [A]
#
#  P
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Chaz Ubell (), charles.ubell@honeywell.com
# ORGANIZATION: SSC
#      VERSION: 1.0
#      CREATED: 10/30/2016 6:19:07 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use v5.10;
use File::Find;   

find (\&find_empty, ".");

sub find_empty() {
    say "$File::Find::name directory " if -d;
    say "$File::Find::name empty directory" if -d && -z;
}


#===  FUNCTION  ================================================================
#         NAME: is_directory
#      PURPOSE: is the file a directory
#   PARAMETERS: full file name
#      RETURNS: 0/1 
#  DESCRIPTION: 0 not 
#       THROWS: no exceptions
#     COMMENTS: none
#     SEE ALSO: n/a
#===============================================================================
#
sub is_directory {
    my	( $file_name )	= @_;
    my $return_value = 0;
    $return_value = 1 if (-d $file_name);
    return $return_value;
} ## --- end sub is_directory


#===  FUNCTION  ================================================================
#         NAME: empty_dir
#      PURPOSE: 
#   PARAMETERS: ????
#      RETURNS: ????
#  DESCRIPTION: ????
#       THROWS: no exceptions
#     COMMENTS: none
#     SEE ALSO: n/a
#===============================================================================


sub empty_dir {
    my	( $par1 )	= @_;
    return ;
} ## --- end sub empty_dir
