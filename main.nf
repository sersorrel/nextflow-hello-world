#!/usr/bin/env nextflow

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
