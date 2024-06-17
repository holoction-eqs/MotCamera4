.class public Lcom/meicam/effect/sdk/NvsAssetPackageManager$NvsTemplateCaptionDesc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/effect/sdk/NvsAssetPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvsTemplateCaptionDesc"
.end annotation


# instance fields
.field public clipIndex:I

.field public replaceId:Ljava/lang/String;

.field public subCaptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meicam/effect/sdk/NvsAssetPackageManager$NvsTemplateCaptionDesc;",
            ">;"
        }
    .end annotation
.end field

.field public text:Ljava/lang/String;

.field public trackIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
