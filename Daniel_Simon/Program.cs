using System;

namespace p {
    class P
    {
        static void t(int[] z)
        {
            string[] a = new string[8];
            a[0] = "Head";
            a[1] = "shoulders";
            a[2] = "knees";
            a[3] = "toes";
            a[4] = "eyes";
            a[5] = "ears";
            a[6] = "mouth";
            a[7] = "nose";
            int[][] v = new int[7][];
            v[0] = new int[] { 0, 1, 2, 3 };
            v[1] = new int[] { 2, 3 };
            v[2] = new int[] { 0, 1, 2, 3 };
            v[3] = new int[] { 2, 3 };
            v[4] = new int[] { 4, 5, 6, 7 };
            v[5] = new int[] { 0, 1, 2, 3 };
            v[6] = new int[] { 2, 3 };
            bool f =false;
            for (int i = 0; i < v.Length; i++)
            {
                for (int j = 0; j < v[i].Length; j++)
                {
                    for (int k = 0; k < z.Length; k++)
                    {
                        if (z[k] == v[i][j])
                        {
                            f = true;
                            break;
                        }
                        else f = false;
                        
                    }
                    if (f) { Console.Write("..."); }else { Console.Write(a[v[i][j]]); }
                    if (v[i][j] == 0 | v[i][j] == 1)
                    {
                        Console.Write(", ");
                    }
                    else if (j < v[i].Length -1 && !f) { Console.Write(" and "); }
                    else if(j < v[i].Length - 1 && f) { Console.Write(" ... "); }
                }
                Console.Write("\n");
            }
            Console.Write("\n");
        }
        static void Main()
        {
            t(new int[0] { });
            t(new int[1] { 0 });
            t(new int[2] { 0, 1 });
            t(new int[3] { 0, 1, 2 });
            t(new int[4] { 0, 1, 2, 3 });
            t(new int[5] { 0, 1, 2, 3, 4 });
            t(new int[6] { 0, 1, 2, 3, 4, 5 });
            t(new int[7] { 0, 1, 2, 3, 4, 5, 6 });
            t(new int[8] { 0, 1, 2, 3, 4, 5, 6,7 });
            Console.ReadKey();
        }
    }
}
