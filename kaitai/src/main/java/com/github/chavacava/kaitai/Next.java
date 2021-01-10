// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
package com.github.chavacava.kaitai;


import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.ArrayList;

public class Next extends KaitaiStruct {
    public static Next fromFile(String fileName) throws IOException {
        return new Next(new ByteBufferKaitaiStream(fileName));
    }

    public Next(KaitaiStream _io) {
        this(_io, null, null);
    }

    public Next(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public Next(KaitaiStream _io, KaitaiStruct _parent, Next _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.magic = this._io.readBytes(9);
        if (!(Arrays.equals(magic(), new byte[] { -119, 78, 69, 88, 84, 13, 10, 26, 10 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { -119, 78, 69, 88, 84, 13, 10, 26, 10 }, magic(), _io(), "/seq/0");
        }
        this.version = this._io.readU1();
        this.dataOffset = this._io.readU2le();
        this.rootByte = this._io.readU1();
        this.originalLenght = this._io.readU8le();
        this.recordsCount = this._io.readU1();
        this.checksum = this._io.readU1();
        records = new ArrayList<RecordData>(((Number) (recordsCount())).intValue());
        for (int i = 0; i < recordsCount(); i++) {
            this.records.add(new RecordData(this._io, this, _root));
        }
    }
    public static class RecordData extends KaitaiStruct {
        public static RecordData fromFile(String fileName) throws IOException {
            return new RecordData(new ByteBufferKaitaiStream(fileName));
        }

        public RecordData(KaitaiStream _io) {
            this(_io, null, null);
        }

        public RecordData(KaitaiStream _io, Next _parent) {
            this(_io, _parent, null);
        }

        public RecordData(KaitaiStream _io, Next _parent, Next _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.type = this._io.readU1();
            this.from = this._io.readU1();
            this.to = this._io.readU1();
        }
        private int type;
        private int from;
        private int to;
        private Next _root;
        private Next _parent;
        public int type() { return type; }
        public int from() { return from; }
        public int to() { return to; }
        public Next _root() { return _root; }
        public Next _parent() { return _parent; }
    }
    private byte[] magic;
    private int version;
    private int dataOffset;
    private int rootByte;
    private long originalLenght;
    private int recordsCount;
    private int checksum;
    private ArrayList<RecordData> records;
    private Next _root;
    private KaitaiStruct _parent;
    public byte[] magic() { return magic; }
    public int version() { return version; }
    public int dataOffset() { return dataOffset; }
    public int rootByte() { return rootByte; }
    public long originalLenght() { return originalLenght; }
    public int recordsCount() { return recordsCount; }
    public int checksum() { return checksum; }
    public ArrayList<RecordData> records() { return records; }
    public Next _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
