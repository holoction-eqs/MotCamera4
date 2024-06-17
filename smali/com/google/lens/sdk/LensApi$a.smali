.class final Lcom/google/lens/sdk/LensApi$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/lens/sdk/LensApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;

.field private final b:I
    .annotation build Lcom/google/lens/sdk/LensApi$LensFeature;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;I)V
    .locals 0
    .param p2    # I
        .annotation build Lcom/google/lens/sdk/LensApi$LensFeature;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/lens/sdk/LensApi$a;->a:Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;

    iput p2, p0, Lcom/google/lens/sdk/LensApi$a;->b:I

    return-void
.end method


# virtual methods
.method public final a(Laf;)V
    .locals 3

    iget v0, p0, Lcom/google/lens/sdk/LensApi$a;->b:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid lens feature: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LensApi"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Laf;->c()Laf$a;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Laf;->b()Laf$a;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Laf$a;->a()I

    move-result v1

    :goto_1
    iget-object p0, p0, Lcom/google/lens/sdk/LensApi$a;->a:Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;

    invoke-interface {p0, v1}, Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;->onAvailabilityStatusFetched(I)V

    return-void
.end method
