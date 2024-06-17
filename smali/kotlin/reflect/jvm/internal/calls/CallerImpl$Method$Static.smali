.class public final Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Static;
.super Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(ILjava/lang/reflect/Method;)V
    .locals 5

    iput p1, p0, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Static;->$r8$classId:I

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "method"

    if-eq p1, v2, :cond_1

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    invoke-static {p2, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, v1, v0}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;-><init>(Ljava/lang/reflect/Method;ZI)V

    return-void

    :cond_0
    invoke-static {p2, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-direct {p0, p2, v2, p1}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;-><init>(Ljava/lang/reflect/Method;ZI)V

    return-void

    :cond_1
    invoke-static {p2, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, v1, v0}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;-><init>(Ljava/lang/reflect/Method;ZI)V

    return-void
.end method


# virtual methods
.method public final call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method$Static;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {p0, p1}, Lkotlin/text/RegexKt;->checkArguments(Lkotlin/reflect/jvm/internal/calls/Caller;[Ljava/lang/Object;)V

    aget-object v0, p1, v2

    array-length v3, p1

    if-gt v3, v1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    goto :goto_0

    :cond_0
    array-length v2, p1

    invoke-static {v1, v2, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->copyOfRange(II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, v0, p1}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;->callMethod(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0, p1}, Lkotlin/text/RegexKt;->checkArguments(Lkotlin/reflect/jvm/internal/calls/Caller;[Ljava/lang/Object;)V

    invoke-virtual {p0, v3, p1}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;->callMethod(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_1
    invoke-static {p0, p1}, Lkotlin/text/RegexKt;->checkArguments(Lkotlin/reflect/jvm/internal/calls/Caller;[Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/calls/CallerImpl;->checkObjectInstance(Ljava/lang/Object;)V

    array-length v0, p1

    if-gt v0, v1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    goto :goto_2

    :cond_1
    array-length v0, p1

    invoke-static {v1, v0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->copyOfRange(II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-virtual {p0, v3, p1}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;->callMethod(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
