.class public final Landroidx/core/view/ViewGroupKt$children$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/sequences/Sequence;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_children:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/core/view/ViewGroupKt$children$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/core/view/ViewGroupKt$children$1;->$this_children:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget v0, p0, Landroidx/core/view/ViewGroupKt$children$1;->$r8$classId:I

    const-string v1, "<this>"

    iget-object p0, p0, Landroidx/core/view/ViewGroupKt$children$1;->$this_children:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lkotlin/jvm/functions/Function2;

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/sequences/SequenceBuilderIterator;

    invoke-direct {v0}, Lkotlin/sequences/SequenceBuilderIterator;-><init>()V

    invoke-static {v0, v0, p0}, Lkotlin/jvm/JvmClassMappingKt;->createCoroutineUnintercepted(Ljava/lang/Object;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function2;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    iput-object p0, v0, Lkotlin/sequences/SequenceBuilderIterator;->nextStep:Lkotlin/coroutines/Continuation;

    return-object v0

    :pswitch_1
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/preference/PreferenceGroup;

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/UIntArray$Iterator;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lkotlin/UIntArray$Iterator;-><init>(Ljava/lang/Object;I)V

    return-object v0

    :pswitch_4
    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/UIntArray$Iterator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lkotlin/UIntArray$Iterator;-><init>(Ljava/lang/Object;I)V

    return-object v0

    :goto_0
    check-cast p0, Ljava/util/Iterator;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
