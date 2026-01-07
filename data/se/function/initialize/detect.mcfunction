######################
# Detect Name Change #
######################

$execute if data storage se:key vals[{uid:$(UUID)}] store result score @s se.uid run data get storage se:key vals[{uid:$(UUID)}].uid
$execute if data storage se:key vals[{uid:$(UUID)}] store result score @s se.maxHomes run data get storage se:key vals[{uid:$(UUID)}].max_homes
$execute if data storage se:key vals[{uid:$(UUID)}] store result score @s se.ontime run data get storage se:key vals[{uid:$(UUID)}].ontime