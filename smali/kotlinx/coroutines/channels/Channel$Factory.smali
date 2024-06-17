.class public final Lkotlinx/coroutines/channels/Channel$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $$INSTANCE:Lkotlinx/coroutines/channels/Channel$Factory;

.field public static final CHANNEL_DEFAULT_CAPACITY:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lkotlinx/coroutines/channels/Channel$Factory;

    invoke-direct {v0}, Lkotlinx/coroutines/channels/Channel$Factory;-><init>()V

    sput-object v0, Lkotlinx/coroutines/channels/Channel$Factory;->$$INSTANCE:Lkotlinx/coroutines/channels/Channel$Factory;

    const-string v1, "kotlinx.coroutines.channels.defaultBuffer"

    const/16 v0, 0x40

    int-to-long v2, v0

    const/4 v0, 0x1

    int-to-long v4, v0

    const v0, 0x7ffffffe

    int-to-long v6, v0

    invoke-static/range {v1 .. v7}, Lkotlinx/coroutines/JobKt;->systemProp(Ljava/lang/String;JJJ)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lkotlinx/coroutines/channels/Channel$Factory;->CHANNEL_DEFAULT_CAPACITY:I

    return-void
.end method
