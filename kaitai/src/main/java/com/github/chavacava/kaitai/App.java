package com.github.chavacava.kaitai;

import java.io.IOException;

/**
 * Hello world!
 */
public final class App {
    private App() {
    }

    /**
     * Says hello to the world.
     * @param args The arguments of the program.
     * @throws IOException
     */
    public static void main(String[] args) throws IOException {
        Next next = Next.fromFile("/workspaces/lab-kaitai/kaitai/deleteme.nxt");
        System.out.println("version:"+next.version());
        System.out.println("original lenght:"+next.originalLenght());
        
        System.out.println("#records:"+next.recordsCount());
        System.out.println("#available records:"+next.records().size());
    }
}
