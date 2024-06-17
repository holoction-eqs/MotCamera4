.class public final Lcom/adobe/xmp/impl/XMPNode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic $r8$classId:I

.field public this$0:Ljava/lang/Object;

.field public final val$it:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/adobe/xmp/impl/XMPNode;Ljava/util/Iterator;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/xmp/impl/XMPNode$1;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPNode$1;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/adobe/xmp/impl/XMPNode$1;->val$it:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/XMPNode$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;

    new-instance v0, Ljava/util/ArrayDeque;

    .line 3
    iget v1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;->zzg:I

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPNode$1;->val$it:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/XMPNode$1;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPNode$1;->val$it:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    :goto_0
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPNode$1;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhd;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/adobe/xmp/impl/XMPNode$1;->$r8$classId:I

    .line 5
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPNode$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhd;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzew;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPNode$1;->val$it:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/adobe/xmp/impl/XMPNode$1;->$r8$classId:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPNode$1;->val$it:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/XMPNode$1;->getLeafByLeft(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPNode$1;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;I)V
    .locals 0

    const/4 p2, 0x3

    iput p2, p0, Lcom/adobe/xmp/impl/XMPNode$1;->$r8$classId:I

    .line 9
    invoke-direct {p0, p1}, Lcom/adobe/xmp/impl/XMPNode$1;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/adobe/xmp/impl/XMPNode$1;->$r8$classId:I

    .line 10
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPNode$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;->list:Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringList;

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPNode$1;->val$it:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getLeafByLeft(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;
    .locals 1

    :goto_0
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode$1;->val$it:Ljava/lang/Object;

    check-cast v0, Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;->left:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    goto :goto_0

    :cond_0
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    return-object p1
.end method

.method public final hasNext()Z
    .locals 4

    iget v0, p0, Lcom/adobe/xmp/impl/XMPNode$1;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPNode$1;->val$it:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object p0, p0, Lcom/adobe/xmp/impl/XMPNode$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :pswitch_1
    check-cast v3, Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    :pswitch_2
    iget-object p0, p0, Lcom/adobe/xmp/impl/XMPNode$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1

    :pswitch_3
    check-cast v3, Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    :goto_2
    check-cast v3, Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/adobe/xmp/impl/XMPNode$1;->$r8$classId:I

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPNode$1;->val$it:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode$1;->next()Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    move-result-object p0

    return-object p0

    .line 2
    :pswitch_1
    check-cast v1, Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 3
    :pswitch_2
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode$1;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_3
    check-cast v1, Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 5
    :goto_0
    check-cast v1, Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;
    .locals 3

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode$1;->this$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    if-eqz v1, :cond_3

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPNode$1;->val$it:Ljava/lang/Object;

    check-cast v1, Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;

    .line 7
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;->right:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    .line 8
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPNode$1;->getLeafByLeft(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;->size()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_0

    .line 10
    :goto_1
    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPNode$1;->this$0:Ljava/lang/Object;

    return-object v0

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 1

    iget p0, p0, Lcom/adobe/xmp/impl/XMPNode$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "remove() is not allowed due to the internal contraints"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;
    .locals 4

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    if-eqz v0, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPNode$1;->val$it:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayDeque;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPNode$1;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;->zzd()I

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    :goto_0
    iput-object v3, p0, Lcom/adobe/xmp/impl/XMPNode$1;->this$0:Ljava/lang/Object;

    return-object v0

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;
    .locals 1

    :goto_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode$1;->val$it:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgg;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcy;

    return-object p1
.end method
