.class public final Lkotlinx/coroutines/Active;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/NotCompleted;


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/Active;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/Active;

    invoke-direct {v0}, Lkotlinx/coroutines/Active;-><init>()V

    sput-object v0, Lkotlinx/coroutines/Active;->INSTANCE:Lkotlinx/coroutines/Active;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Active"

    return-object p0
.end method
