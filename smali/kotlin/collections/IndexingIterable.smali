.class public final Lkotlin/collections/IndexingIterable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final synthetic $r8$classId:I

.field public final iteratorFactory:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/window/core/Version$bigInteger$2;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/collections/IndexingIterable;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/collections/IndexingIterable;->iteratorFactory:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p2, p0, Lkotlin/collections/IndexingIterable;->$r8$classId:I

    iput-object p1, p0, Lkotlin/collections/IndexingIterable;->iteratorFactory:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget v0, p0, Lkotlin/collections/IndexingIterable;->$r8$classId:I

    iget-object p0, p0, Lkotlin/collections/IndexingIterable;->iteratorFactory:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance v0, Lkotlin/collections/IndexingIterator;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke$2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;

    invoke-direct {v0, p0}, Lkotlin/collections/IndexingIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :goto_0
    check-cast p0, Lkotlin/sequences/Sequence;

    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
