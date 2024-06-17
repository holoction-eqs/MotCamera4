.class public final Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $delimitersList:Ljava/lang/Object;

.field public final synthetic $ignoreCase:Z

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    iput p3, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->$r8$classId:I

    iput-object p1, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->$delimitersList:Ljava/lang/Object;

    iput-boolean p2, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->$ignoreCase:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    const-string v0, "$this$$receiver"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->$delimitersList:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    iget-boolean p0, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->$ignoreCase:Z

    const/4 v1, 0x0

    const/4 v7, 0x0

    if-nez p0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->single(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {p1, p0, p2, v1, v0}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p1

    if-gez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, p1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance v2, Lkotlin/ranges/IntRange;

    if-gez p2, :cond_2

    move p2, v1

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v2, p2, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    instance-of v1, p1, Ljava/lang/String;

    iget v8, v2, Lkotlin/ranges/IntProgression;->step:I

    iget v9, v2, Lkotlin/ranges/IntProgression;->last:I

    if-eqz v1, :cond_8

    if-lez v8, :cond_3

    if-le p2, v9, :cond_4

    :cond_3
    if-gez v8, :cond_e

    if-gt v9, p2, :cond_e

    :cond_4
    :goto_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v4, v11

    check-cast v4, Ljava/lang/String;

    const/4 v1, 0x0

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    move v2, p2

    move v6, p0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsKt;->regionMatches(IIILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_6
    move-object v11, v7

    :goto_1
    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, p0, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    if-eq p2, v9, :cond_e

    add-int/2addr p2, v8

    goto :goto_0

    :cond_8
    if-lez v8, :cond_9

    if-le p2, v9, :cond_a

    :cond_9
    if-gez v8, :cond_e

    if-gt v9, p2, :cond_e

    :cond_a
    :goto_2
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, p1, p2, v4, p0}, Lkotlin/text/StringsKt__StringsKt;->regionMatchesImpl(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZ)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_3

    :cond_c
    move-object v2, v7

    :goto_3
    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, p0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_d
    if-eq p2, v9, :cond_e

    add-int/2addr p2, v8

    goto :goto_2

    :cond_e
    :goto_4
    move-object p2, v7

    :goto_5
    if-eqz p2, :cond_f

    iget-object p0, p2, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v7, Lkotlin/Pair;

    iget-object p1, p2, Lkotlin/Pair;->first:Ljava/lang/Object;

    invoke-direct {v7, p1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    return-object v7

    :goto_6
    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
