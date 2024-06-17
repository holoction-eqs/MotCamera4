.class public abstract Lkotlinx/coroutines/internal/LockFreeLinkedListKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONDITION_FALSE:Lkotlinx/coroutines/internal/Symbol;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "CONDITION_FALSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->CONDITION_FALSE:Lkotlinx/coroutines/internal/Symbol;

    return-void
.end method
