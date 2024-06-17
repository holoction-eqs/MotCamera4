.class public final Lkotlinx/coroutines/internal/Symbol;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# instance fields
.field public final synthetic $r8$classId:I

.field public final symbol:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lkotlinx/coroutines/internal/Symbol;->$r8$classId:I

    iput-object p1, p0, Lkotlinx/coroutines/internal/Symbol;->symbol:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/gson/JsonIOException;

    iget-object p0, p0, Lkotlinx/coroutines/internal/Symbol;->symbol:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lkotlinx/coroutines/internal/Symbol;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/coroutines/internal/Symbol;->symbol:Ljava/lang/String;

    const/16 v1, 0x3e

    invoke-static {v0, p0, v1}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
