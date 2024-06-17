.class public abstract Lcom/google/common/collect/CompactHashMap$Itr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic $r8$classId:I

.field public currentIndex:I

.field public expectedMetadata:I

.field public indexToRemove:I

.field public final synthetic this$0:Ljava/util/AbstractMap;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->this$0:Ljava/util/AbstractMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzf:I

    .line 3
    iput v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->expectedMetadata:I

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->isEmpty()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iput p1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    iput v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/CompactHashMap;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->$r8$classId:I

    .line 6
    iput-object p1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->this$0:Ljava/util/AbstractMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget v1, p1, Lcom/google/common/collect/CompactHashMap;->metadata:I

    .line 8
    iput v1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->expectedMetadata:I

    .line 9
    invoke-virtual {p1}, Lcom/google/common/collect/CompactHashMap;->isEmpty()Z

    move-result p1

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    move v0, v1

    .line 10
    :cond_0
    iput v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    iput v1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/CompactHashMap;I)V
    .locals 0

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/common/collect/CompactHashMap$Itr;->$r8$classId:I

    .line 11
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap$Itr;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-void
.end method


# virtual methods
.method public abstract getOutput(I)Ljava/lang/Object;
.end method

.method public final hasNext()Z
    .locals 3

    iget v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget p0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :goto_1
    iget p0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    if-ltz p0, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->this$0:Ljava/util/AbstractMap;

    const/4 v1, -0x1

    iget v2, p0, Lcom/google/common/collect/CompactHashMap$Itr;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v2, v0

    check-cast v2, Lcom/google/common/collect/CompactHashMap;

    iget v2, v2, Lcom/google/common/collect/CompactHashMap;->metadata:I

    iget v3, p0, Lcom/google/common/collect/CompactHashMap$Itr;->expectedMetadata:I

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap$Itr;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    iput v2, p0, Lcom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    invoke-virtual {p0, v2}, Lcom/google/common/collect/CompactHashMap$Itr;->getOutput(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v0, Lcom/google/common/collect/CompactHashMap;

    iget v3, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    add-int/lit8 v3, v3, 0x1

    iget v0, v0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge v3, v0, :cond_0

    move v1, v3

    :cond_0
    iput v1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    return-object v2

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :goto_0
    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;

    iget v2, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzf:I

    iget v3, p0, Lcom/google/common/collect/CompactHashMap$Itr;->expectedMetadata:I

    if-ne v2, v3, :cond_5

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap$Itr;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    iput v2, p0, Lcom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    invoke-virtual {p0, v2}, Lcom/google/common/collect/CompactHashMap$Itr;->zza(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;

    iget v3, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    add-int/lit8 v3, v3, 0x1

    iget v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzg:I

    if-ge v3, v0, :cond_3

    move v1, v3

    :cond_3
    iput v1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    return-object v2

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_5
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 7

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->this$0:Ljava/util/AbstractMap;

    const-string v1, "no calls to next() since the last call to remove()"

    iget v2, p0, Lcom/google/common/collect/CompactHashMap$Itr;->$r8$classId:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move-object v2, v0

    check-cast v2, Lcom/google/common/collect/CompactHashMap;

    iget v2, v2, Lcom/google/common/collect/CompactHashMap;->metadata:I

    iget v6, p0, Lcom/google/common/collect/CompactHashMap$Itr;->expectedMetadata:I

    if-ne v2, v6, :cond_1

    iget v2, p0, Lcom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-static {v1, v4}, Lkotlin/collections/ArraysUtilJVM;->checkState(Ljava/lang/String;Z)V

    iget v1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->expectedMetadata:I

    add-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->expectedMetadata:I

    check-cast v0, Lcom/google/common/collect/CompactHashMap;

    iget v1, p0, Lcom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/CompactHashMap;->key(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/CompactHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    iput v3, p0, Lcom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    return-void

    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :goto_1
    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;

    iget v2, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzf:I

    iget v6, p0, Lcom/google/common/collect/CompactHashMap$Itr;->expectedMetadata:I

    if-ne v2, v6, :cond_4

    iget v2, p0, Lcom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    if-ltz v2, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    if-eqz v4, :cond_3

    add-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/common/collect/CompactHashMap$Itr;->expectedMetadata:I

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzb:[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    iput v3, p0, Lcom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public abstract zza(I)Ljava/lang/Object;
.end method
