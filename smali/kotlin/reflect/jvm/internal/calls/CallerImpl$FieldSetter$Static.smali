.class public final Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter$Static;
.super Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;ZI)V
    .locals 3

    iput p3, p0, Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter$Static;->$r8$classId:I

    const-string v0, "field"

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    const/4 v2, 0x2

    if-eq p3, v2, :cond_0

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter;-><init>(Ljava/lang/reflect/Field;ZZ)V

    return-void

    :cond_0
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v1}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter;-><init>(Ljava/lang/reflect/Field;ZZ)V

    return-void

    :cond_1
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v1}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter;-><init>(Ljava/lang/reflect/Field;ZZ)V

    return-void
.end method


# virtual methods
.method public final checkArguments([Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter$Static;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter;->checkArguments([Ljava/lang/Object;)V

    return-void

    :pswitch_0
    invoke-super {p0, p1}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter;->checkArguments([Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/calls/CallerImpl;->checkObjectInstance(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
