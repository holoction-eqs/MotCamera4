.class public final Lcom/motorola/camera/mcf/McfAuxiliaryData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;
    }
.end annotation


# static fields
.field public static final BINDATA:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key<",
            "Lcom/motorola/camera/mcf/McfAuxBinData;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEPTHMAP:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key<",
            "Lcom/motorola/camera/mcf/McfAuxFrameData;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEPTHRENDER:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key<",
            "Lcom/motorola/camera/mcf/McfDepthRender;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOCUMENT_DATA:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key<",
            "Lcom/motorola/camera/mcf/McfAuxBmpData;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMAGING_MODEL:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key<",
            "Lcom/motorola/camera/mcf/McfImagingModelAuxData;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSTCAPFRAME:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key<",
            "Lcom/motorola/camera/mcf/McfAuxFrameData;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MCFJV_McfAuxiliaryData"


# instance fields
.field private final mDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;",
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    const-string v1, "motorola.camera.mcf.auxiliaryData.depthMap"

    const-class v2, Lcom/motorola/camera/mcf/McfAuxFrameData;

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHMAP:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    new-instance v0, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    const-string v1, "motorola.camera.mcf.auxiliaryData.depthRender"

    const-class v3, Lcom/motorola/camera/mcf/McfDepthRender;

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHRENDER:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    new-instance v0, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    const-string v1, "motorola.camera.mcf.auxiliaryData.postCapFrame"

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->POSTCAPFRAME:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    new-instance v0, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    const-string v1, "motorola.camera.mcf.auxiliaryData.binData"

    const-class v2, Lcom/motorola/camera/mcf/McfAuxBinData;

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->BINDATA:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    new-instance v0, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    const-string v1, "motorola.camera.mcf.auxiliaryData.docData"

    const-class v2, Lcom/motorola/camera/mcf/McfAuxBmpData;

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DOCUMENT_DATA:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    new-instance v0, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    const-string v1, "motorola.camera.mcf.auxiliaryData.imagingModel"

    const-class v2, Lcom/motorola/camera/mcf/McfImagingModelAuxData;

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->IMAGING_MODEL:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->mDataMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->mDataMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/McfAuxiliaryData$Value;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxiliaryData$Value;->mValue:Ljava/lang/Object;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final getKeys()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->mDataMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public parseFromJson(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "DepthMap"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    new-instance v1, Lcom/motorola/camera/mcf/McfAuxFrameData;

    invoke-direct {v1, p1, p2}, Lcom/motorola/camera/mcf/McfAuxFrameData;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->setDepthMap(Lcom/motorola/camera/mcf/McfAuxFrameData;)V

    const-string p1, "DepthRenderInfo"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance p2, Lcom/motorola/camera/mcf/McfDepthRender;

    invoke-direct {p2, p1}, Lcom/motorola/camera/mcf/McfDepthRender;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->setDepthRender(Lcom/motorola/camera/mcf/McfDepthRender;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/motorola/camera/mcf/McfAuxiliaryData;->TAG:Ljava/lang/String;

    const-string p2, "Failed to parse aux depth data: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p0
.end method

.method public final set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->mDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/McfAuxiliaryData$Value;

    if-eqz v0, :cond_0

    iput-object p2, v0, Lcom/motorola/camera/mcf/McfAuxiliaryData$Value;->mValue:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/camera/mcf/McfAuxiliaryData$Value;

    invoke-direct {v0, p2}, Lcom/motorola/camera/mcf/McfAuxiliaryData$Value;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->mDataMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final setBinData(Lcom/motorola/camera/mcf/McfAuxBinData;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->BINDATA:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setBmpData(Lcom/motorola/camera/mcf/McfAuxBmpData;)V
    .locals 2

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/McfAuxBmpData;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DOC_SCAN_BMP_DATA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DOCUMENT_DATA:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setBoolean(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setByte(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key<",
            "Ljava/lang/Byte;",
            ">;B)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setDepthMap(Lcom/motorola/camera/mcf/McfAuxFrameData;)V
    .locals 2

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DepthMap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHMAP:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string v0, "PostViewFrame"

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->POSTCAPFRAME:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final setDepthRender(Lcom/motorola/camera/mcf/McfDepthRender;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHRENDER:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setFloat(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setImagingModel(Lcom/motorola/camera/mcf/McfImagingModelAuxData;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->IMAGING_MODEL:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setInt(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setLong(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/mcf/McfAuxiliaryData$Key<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->mDataMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, "["

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v2, "("

    invoke-static {v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/mcf/McfAuxiliaryData$Value;

    invoke-virtual {v1}, Lcom/motorola/camera/mcf/McfAuxiliaryData$Value;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string p0, "]"

    invoke-static {v0, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
