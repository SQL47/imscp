=head1 NAME

 Servers::sqld::mariadb::installer - i-MSCP MariaDB server installer implementation

=cut

# i-MSCP - internet Multi Server Control Panel
# Copyright (C) 2010-2017 by Laurent Declercq <l.declercq@nuxwin.com>
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

package Servers::sqld::mariadb::installer;

use strict;
use warnings;
use iMSCP::EventManager;
use Servers::sqld::mariadb;
use parent 'Servers::sqld::mysql::installer';

=head1 DESCRIPTION

 i-MSCP MariaDB server installer implementation.

=head1 PRIVATE METHODS

=over 4

=item _init( )

 Initialize instance

 Return Servers::sqld::mariadb:installer

=cut

sub _init
{
    my ($self) = @_;

    $self->{'eventManager'} = iMSCP::EventManager->getInstance();
    $self->{'sqld'} = Servers::sqld::mariadb->getInstance();
    $self->{'cfgDir'} = $self->{'sqld'}->{'cfgDir'};
    $self->{'config'} = $self->{'sqld'}->{'config'};
    $self;
}

=back

=head1 AUTHOR

 Laurent Declercq <l.declercq@nuxwin.com>

=cut

1;
__END__
