.class public final enum Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

.field public static final enum FADE_IN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

.field public static final enum FADE_OUT:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    const-string v1, "FADE_IN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;->FADE_IN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    const-string v2, "FADE_OUT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;->FADE_OUT:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    filled-new-array {v0, v1}, [Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    return-object v0
.end method
