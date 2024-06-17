.class public final Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringList;


# instance fields
.field public final list:Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringList;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringList;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;->list:Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringList;

    return-void
.end method


# virtual methods
.method public final add(Lkotlin/reflect/jvm/internal/impl/protobuf/LiteralByteString;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;->list:Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getByteString(I)Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;->list:Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringList;

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringList;->getByteString(I)Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public final getUnderlyingElements()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;->list:Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringList;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getUnmodifiableView()Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;
    .locals 0

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/adobe/xmp/impl/XMPNode$1;

    invoke-direct {v0, p0}, Lcom/adobe/xmp/impl/XMPNode$1;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhb;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;I)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/UnmodifiableLazyStringList;->list:Lkotlin/reflect/jvm/internal/impl/protobuf/LazyStringList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
