.class public final enum Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

.field public static final enum FBO_VERTICES_NORMALS:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

.field public static final enum VERTICES:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

.field public static final enum VERTICES_NORMALS:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

.field public static final enum YUV_VERTICES_NORMALS:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;


# instance fields
.field public final mData:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    const/16 v1, 0x14

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "VERTICES_NORMALS"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;-><init>(Ljava/lang/String;I[F)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->VERTICES_NORMALS:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    const/16 v3, 0xc

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    const-string v4, "VERTICES"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;-><init>(Ljava/lang/String;I[F)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->VERTICES:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    const-string v4, "FBO_VERTICES_NORMALS"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;-><init>(Ljava/lang/String;I[F)V

    sput-object v3, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->FBO_VERTICES_NORMALS:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    const/16 v4, 0x10

    new-array v4, v4, [F

    fill-array-data v4, :array_3

    const-string v5, "YUV_VERTICES_NORMALS"

    const/4 v6, 0x3

    invoke-direct {v1, v5, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;-><init>(Ljava/lang/String;I[F)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->YUV_VERTICES_NORMALS:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    filled-new-array {v0, v2, v3, v1}, [Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I[F)V
    .locals 2

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Ljava/util/ArrayList;

    array-length p2, p3

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget v1, p3, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->mData:Ljava/util/List;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    return-object v0
.end method


# virtual methods
.method public final getData()[F
    .locals 4

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->mData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_1

    :cond_0
    const/high16 v3, 0x7fc00000    # Float.NaN

    :goto_1
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
