
# the following code make the list of properties / methods
use application "polytope";
include "common::sage.rules";

print "# This file was autogenerated! Do not edit!!!\n\n";

sub list_properties
{
    my $c = shift;
    my $r = Sage::properties_for_object($c);
    my $d = $c->type->full_name;
    $d =~ s/\ as\ .*//;
    print "type_properties[b\"".$d."\"] = {\n";
    foreach (sort keys %$r) {print "    b\"".$_."\" : b\"".$r->{$_}."\",\n"};
    print "}\n";
}
# Polytope<Rational>
list_properties(cube(3));

# Graph<Undirected>
list_properties(cube(3)->GRAPH);

# GeometricSimplicialComplex<Rational>
list_properties(cube(3)->TRIANGULATION);

# EdgeWeightedGraph
list_properties(cube(3)->TRIANGULATION->MIXED_GRAPH);

# Lattice<BasicDecoration, Sequential>
list_properties(cube(3)->HASSE_DIAGRAM);

#$c = cube(3)->GROEBNER_BASIS;
#$r = Sage::properties_for_object($c);
#print "type_properties[b\"".$c->type->full_name."\"] = {\n";
#foreach (keys %$r) {print "    b\"".$_."\" : b\"".$r->{$_}."\",\n"};
#print "}\n";

