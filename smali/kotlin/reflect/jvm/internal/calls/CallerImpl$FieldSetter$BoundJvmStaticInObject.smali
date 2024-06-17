.class public final Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter$BoundJvmStaticInObject;
.super Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/calls/BoundCaller;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Z)V
    .locals 1

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter;-><init>(Ljava/lang/reflect/Field;ZZ)V

    return-void
.end method


# virtual methods
.method public final call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/calls/CallerImpl$FieldSetter;->checkArguments([Ljava/lang/Object;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/calls/CallerImpl;->member:Ljava/lang/reflect/Member;

    check-cast p0, Ljava/lang/reflect/Field;

    const/4 v0, 0x0

    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->last([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
