#!/usr/bin/env nextflow

params.to = "World"

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
