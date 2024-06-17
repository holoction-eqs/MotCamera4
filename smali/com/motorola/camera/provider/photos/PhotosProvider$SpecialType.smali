.class public final enum Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

.field public static final enum AutoEnhance:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

.field public static final enum BestShotType:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

.field public static final enum Composition:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

.field public static final enum CudAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

.field public static final enum Depth:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

.field public static final enum Doc:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

.field public static final enum ImageStabilizationAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

.field public static final enum Layer:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

.field public static final enum LowLightAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

.field public static final enum None:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

.field public static final enum OriginalType:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

.field public static final enum Portrait:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

.field public static final enum Unknown:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

.field public static final mTypeMap:Ljava/util/HashMap;


# instance fields
.field public final mActivityClassArray:Landroid/util/SparseArray;

.field public final mActivityPackageArray:Landroid/util/SparseArray;

.field public mConfigurationInt:I

.field public mDescriptionResId:I

.field public mIconResId:I

.field public final mIndex:I

.field public mNameResId:I

.field public final mType:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const-string v1, "Unknown"

    const/4 v13, 0x0

    const-string v2, "com.motorola.camera.SpecialType.Unknown"

    invoke-direct {v0, v1, v13, v13, v2}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Unknown:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    new-instance v1, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const-string v2, "com.motorola.camera.SpecialType.None"

    const-string v3, "None"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v2}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->None:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    new-instance v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const-string v3, "com.motorola.camera.SpecialType.BestShotType"

    const-string v4, "BestShotType"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v5, v3}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->BestShotType:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    new-instance v3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const-string v4, "com.motorola.camera.SpecialType.OriginalType"

    const-string v5, "OriginalType"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v6, v4}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->OriginalType:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    new-instance v4, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const-string v5, "com.motorola.camera.SpecialType.Depth"

    const-string v6, "Depth"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v7, v5}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Depth:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    new-instance v5, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const-string v6, "com.motorola.camera.SpecialType.Layer"

    const-string v7, "Layer"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v8, v6}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Layer:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    new-instance v6, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const-string v7, "com.motorola.camera.SpecialType.Portrait"

    const-string v8, "Portrait"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v9, v7}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Portrait:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    new-instance v7, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const-string v8, "com.motorola.camera.SpecialType.Composition"

    const-string v9, "Composition"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v10, v8}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Composition:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    new-instance v8, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const-string v9, "com.motorola.camera.SpecialType.LowlightAI"

    const-string v10, "LowLightAI"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v11, v9}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->LowLightAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    new-instance v9, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const-string v10, "com.motorola.camera.SpecialType.Doc"

    const-string v11, "Doc"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v12, v10}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Doc:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    new-instance v10, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const-string v11, "com.motorola.camera.SpecialType.ImageStabilizationAI"

    const-string v12, "ImageStabilizationAI"

    const/16 v14, 0xa

    invoke-direct {v10, v12, v14, v14, v11}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->ImageStabilizationAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    new-instance v11, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const-string v12, "com.motorola.camera.SpecialType.CudAI"

    const-string v14, "CudAI"

    const/16 v15, 0xb

    invoke-direct {v11, v14, v15, v15, v12}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->CudAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    new-instance v12, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    const-string v14, "com.motorola.camera.SpecialType.AutoEnhance"

    const-string v15, "AutoEnhance"

    const/16 v13, 0xc

    invoke-direct {v12, v15, v13, v13, v14}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->AutoEnhance:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    filled-new-array/range {v0 .. v12}, [Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->$VALUES:[Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->values()[Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mTypeMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->values()[Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    move-result-object v0

    array-length v1, v0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v1, :cond_0

    aget-object v2, v0, v13

    sget-object v3, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mTypeMap:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    iput p3, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mIndex:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mNameResId:I

    iput p1, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mDescriptionResId:I

    iput p1, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mIconResId:I

    iput p1, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityClassArray:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityPackageArray:Landroid/util/SparseArray;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;
    .locals 1

    const-class v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->$VALUES:[Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    invoke-virtual {v0}, [Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    return-object v0
.end method


# virtual methods
.method public final isEditAvailable()Z
    .locals 1

    iget p0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final removeEditConfiguration()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    iget-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityPackageArray:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    iget-object p0, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityClassArray:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method
