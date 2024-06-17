.class public Lcom/meicam/effect/sdk/NvsMakeupEffectInfo$MakeupEffectLayerLut;
.super Lcom/meicam/effect/sdk/NvsMakeupEffectInfo$MakeupEffectLayer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/effect/sdk/NvsMakeupEffectInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MakeupEffectLayerLut"
.end annotation


# instance fields
.field public lutFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meicam/effect/sdk/NvsMakeupEffectInfo$MakeupEffectLayer;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getLutFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsMakeupEffectInfo$MakeupEffectLayerLut;->lutFilePath:Ljava/lang/String;

    return-object p0
.end method
