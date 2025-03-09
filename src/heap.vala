public class Heap : GLib.Object {
    private int[] _arr;

    public int size{get;set;default=0;}

    public Heap(int[] G){
        this._arr = G;
        this.size = G.length;
    }

    public int[] getHeap(){
        return this._arr;
    }

    // unused
    private int parent(int i){
        return (i - 1) / 2;
    }

    private int left(int i){
        return 2 * (i+1) - 1;
    }

    private int right(int i){
        return 2 * (i+1);
    }

    //internal purpose
    private void swapNode(int i, int j){
        int tmp = this._arr[i];
        this._arr[i] = this._arr[j];
        this._arr[j] = tmp;
    }

    public void maxHeapify(int i){
        int l = left(i);
        int r = right(i);
        int largest;

        if(l < this.size && this._arr[l] > this._arr[i]){
            largest = l;
        } else {
            largest = i;
        }
        if(r < this.size && this._arr[r] > this._arr[largest]){
            largest = r;
        }
        if(largest != i){
            //swap two nodes
            swapNode(i, largest);
            maxHeapify(largest);
        }
    }

    public void buildMaxHeap(){
        int len = (this.size-1)/2;
        for(int i=len;i>=0;i--){
            maxHeapify(i);
        }
    }

    public void heapSort(){
        buildMaxHeap();
        for(int i=this.size-1;i>=1;i--){
            swapNode(0, i);
            this.size = this.size - 1;
            maxHeapify(0);
        }
    }
}
