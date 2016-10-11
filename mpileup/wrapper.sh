#!/bin/bash

samtools mpileup - ${*} | bcftools call -m -Ov