.class public Lcom/meicam/effect/sdk/NvsAssetPackageManager$NvsTemplateFootageDesc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/effect/sdk/NvsAssetPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvsTemplateFootageDesc"
.end annotation


# instance fields
.field public canReplace:Z

.field public correspondingClipInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meicam/effect/sdk/NvsAssetPackageManager$NvsTemplateFootageCorrespondingClipInfo;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public innerAssetFilePath:Ljava/lang/String;

.field public tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public timelineClipFootages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meicam/effect/sdk/NvsAssetPackageManager$NvsTemplateFootageDesc;",
            ">;"
        }
    .end annotation
.end field

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
