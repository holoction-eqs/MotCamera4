.class public abstract Lkotlin/random/Random;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Default:Lkotlin/random/Random$Default;

.field public static final defaultRandom:Lkotlin/random/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/random/Random$Default;

    invoke-direct {v0}, Lkotlin/random/Random$Default;-><init>()V

    sput-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    sget-object v0, Lkotlin/internal/PlatformImplementationsKt;->IMPLEMENTATIONS:Lkotlin/internal/PlatformImplementations;

    invoke-virtual {v0}, Lkotlin/internal/PlatformImplementations;->defaultPlatformRandom()Lkotlin/random/Random;

    move-result-object v0

    sput-object v0, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract nextInt()I
.end method
