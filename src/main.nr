global number = 14194126;
global hash = 0;

global block_header_partial = BlockHeaderPartial { number, hash};

struct BlockHeaderPartial {
    number: Field,
    hash: Field,
}

fn main(block_no: pub Field) -> pub BlockHeaderPartial {
    let block_header_partial = get_header_unconstrained(block_no);
    assert(block_header_partial.number == block_no);
    block_header_partial
}

unconstrained fn get_header_unconstrained(block_no: Field) -> BlockHeaderPartial {
    block_header_partial
}
