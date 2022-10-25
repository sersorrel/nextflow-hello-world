#!/usr/bin/env nextflow
nextflow.enable.dsl=2

process HELLO {
	input:
	val thing

	output:
	stdout

	"""
	printf 'hello, %s!' '$thing'
	"""
}

workflow {
	Channel.of(params.to) | HELLO | view
}
