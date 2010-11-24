package Jonk;
use strict;
use warnings;

our $VERSION = '0.01';

1;
__END__

=head1 NAME

Jonk - simple job tank manager.

=head1 SYNOPSIS

    use DBI; 
    my $dbh = DBI->connect(...);
    # enqueue job
    {
        use Jonk::Client;
        my $jonk = Jonk::Client->new($dbh);
        $jonk->enqueue('MyWorker', 'arg');
    }

    # dequeue job
    {
        use Jonk::Worker;
        my $jonk = Jonk::Worker->new($dbh, {functions => ['MyWorker']});
        my $job = $jonk->dequeue;
        print $job->{func}; # MyWorker
        print $job->{arg};  # arg
    }

=head1 DESCRIPTION

Jonk is simple job tanking system.

Job is saved and taken out. Besides, nothing is done.

You may use Jonk to make original Job Queuing System.

Jonk is a META Job Queuing System.

=head1 L<Jonk::Client>

enqueue client class.

=head1 L<Jonk::Worker>

dequeue client class.

=head1 AUTHOR

Atsushi Kobayashi E<lt>nekokak _at_ gmail _dot_ comE<gt>

=head1 SEE ALSO

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

