.class public final enum Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

.field public static final enum COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

.field public static final enum POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

.field public static final enum TEXTURE_COORD:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

.field public static final mLookupMap:Ljava/util/HashMap;


# instance fields
.field public final mName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    const-string v1, "POSITION"

    const/4 v6, 0x0

    const-string v2, "a_Position"

    invoke-direct {v0, v1, v6, v2}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    const-string v2, "a_TextureCoord"

    const-string v3, "TEXTURE_COORD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->TEXTURE_COORD:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    const-string v3, "a_Color"

    const-string v4, "COLOR"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    const-string v4, "a_Y_texcoord"

    const-string v5, "Y_TEXCOORD"

    const/4 v7, 0x3

    invoke-direct {v3, v5, v7, v4}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    const-string v5, "a_VU_texcoord"

    const-string v7, "VU_TEXCOORD"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v8, v5}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    const-string v7, "a_Pixcoord"

    const-string v8, "PIXCOORD"

    const/4 v9, 0x5

    invoke-direct {v5, v8, v9, v7}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    filled-new-array/range {v0 .. v5}, [Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->mLookupMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->values()[Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v6, v1, :cond_0

    aget-object v2, v0, v6

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->mLookupMap:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    return-object v0
.end method
