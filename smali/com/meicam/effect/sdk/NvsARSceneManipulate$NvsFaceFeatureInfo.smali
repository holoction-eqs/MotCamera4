.class public Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsFaceFeatureInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/effect/sdk/NvsARSceneManipulate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvsFaceFeatureInfo"
.end annotation


# instance fields
.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private avatarExpressions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public boundingBox:Landroid/graphics/RectF;

.field public extraPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public extraVertices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meicam/effect/sdk/NvsPosition3D;",
            ">;"
        }
    .end annotation
.end field

.field public extraVisibilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public faceId:I

.field public landmarks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meicam/effect/sdk/NvsPosition2D;",
            ">;"
        }
    .end annotation
.end field

.field public pitch:F

.field public roll:F

.field public rotation:Lcom/meicam/effect/sdk/NvsPosition3D;

.field public translation:Lcom/meicam/effect/sdk/NvsPosition3D;

.field public vertices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meicam/effect/sdk/NvsPosition3D;",
            ">;"
        }
    .end annotation
.end field

.field public visibilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public yaw:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsFaceFeatureInfo;->actions:Ljava/util/List;

    return-object p0
.end method

.method public getAvatarExpressions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsFaceFeatureInfo;->avatarExpressions:Ljava/util/List;

    return-object p0
.end method

.method public getExtraPoints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsFaceFeatureInfo;->extraPoints:Ljava/util/List;

    return-object p0
.end method

.method public getExtraVertices()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meicam/effect/sdk/NvsPosition3D;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsFaceFeatureInfo;->extraVertices:Ljava/util/List;

    return-object p0
.end method

.method public getExtraVisibilities()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsFaceFeatureInfo;->extraVisibilities:Ljava/util/List;

    return-object p0
.end method

.method public setActions(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsFaceFeatureInfo;->actions:Ljava/util/List;

    return-void
.end method

.method public setAvatarExpressions(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsFaceFeatureInfo;->avatarExpressions:Ljava/util/List;

    return-void
.end method

.method public setBoundingBox(FFFF)V
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsFaceFeatureInfo;->boundingBox:Landroid/graphics/RectF;

    return-void
.end method

.method public setExtraPoints(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsFaceFeatureInfo;->extraPoints:Ljava/util/List;

    return-void
.end method

.method public setExtraVertices(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meicam/effect/sdk/NvsPosition3D;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsFaceFeatureInfo;->extraVertices:Ljava/util/List;

    return-void
.end method

.method public setExtraVisibilities(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsFaceFeatureInfo;->extraVisibilities:Ljava/util/List;

    return-void
.end method

.method public setFaceId(I)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsFaceFeatureInfo;->faceId:I

    return-void
.end method

.method public setLandmarks(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meicam/effect/sdk/NvsPosition2D;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsFaceFeatureInfo;->landmarks:Ljava/util/List;

    return-void
.end method

.method public setPitch(F)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsFaceFeatureInfo;->pitch:F

    return-void
.end method

.method public setRoll(F)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsFaceFeatureInfo;->roll:F

    return-void
.end method

.method public setRotation(Lcom/meicam/effect/sdk/NvsPosition3D;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsFaceFeatureInfo;->rotation:Lcom/meicam/effect/sdk/NvsPosition3D;

    return-void
.end method

.method public setTranslation(Lcom/meicam/effect/sdk/NvsPosition3D;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsFaceFeatureInfo;->translation:Lcom/meicam/effect/sdk/NvsPosition3D;

    return-void
.end method

.method public setVertices(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meicam/effect/sdk/NvsPosition3D;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsFaceFeatureInfo;->vertices:Ljava/util/List;

    return-void
.end method

.method public setVisibilities(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsFaceFeatureInfo;->visibilities:Ljava/util/List;

    return-void
.end method

.method public setYaw(F)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsFaceFeatureInfo;->yaw:F

    return-void
.end method
