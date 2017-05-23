// for cppmem
int main() {
  int x=0;
  atomic_int y = 0;
  x=1;
  {{{ {x = 2; x=3;
       y.store(1, memory_order_release);
       }
  ||| x = 4;
  ||| { r1= y.load(memory_order_acquire);
       r2 = x.readsvalue(4);
     }
  }}};
