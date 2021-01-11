package com.github.chavacava.kaitai;

import io.kaitai.struct.CustomDecoder;

public class MyCustomProcessor implements CustomDecoder{

    public MyCustomProcessor(int i) {
	}

	@Override
    public byte[] decode(byte[] src) {
        src[0] = (byte) (src[0]+1);
        return src;
    }

}
