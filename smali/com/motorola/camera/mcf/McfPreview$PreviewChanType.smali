.class public final enum Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

.field public static final enum MCF_COLOR_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

.field public static final enum MCF_MONO_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    const-string v1, "MCF_COLOR_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_COLOR_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    new-instance v1, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    const-string v2, "MCF_MONO_0"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_MONO_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    filled-new-array {v0, v1}, [Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->$VALUES:[Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;
    .locals 1

    const-class v0, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->$VALUES:[Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    invoke-virtual {v0}, [Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    return-object v0
.end method


# virtual methods
.method public final enumToVal()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown type input : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "McfPreview"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :cond_1
    :goto_0
    return v1
.end method
