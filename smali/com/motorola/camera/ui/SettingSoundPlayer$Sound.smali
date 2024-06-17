.class public final enum Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

.field public static final enum BEEP_ONCE:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

.field public static final enum BEEP_TWICE:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

.field public static final enum SHUTTER_CLICK:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;


# instance fields
.field public final mRes:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    const/4 v1, 0x0

    const-string v2, "SHUTTER_CLICK"

    const v3, 0x7f110004

    invoke-direct {v0, v1, v3, v2}, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->SHUTTER_CLICK:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    new-instance v1, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    const v2, 0x7f110009

    const-string v3, "CAMERA_WHEEL"

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;-><init>(IILjava/lang/String;)V

    new-instance v2, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    const/high16 v3, 0x7f110000

    const-string v4, "BEEP_ONCE"

    const/4 v5, 0x2

    invoke-direct {v2, v5, v3, v4}, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;-><init>(IILjava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->BEEP_ONCE:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    new-instance v3, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    const v4, 0x7f110001

    const-string v5, "BEEP_TWICE"

    const/4 v6, 0x3

    invoke-direct {v3, v6, v4, v5}, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;-><init>(IILjava/lang/String;)V

    sput-object v3, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->BEEP_TWICE:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    filled-new-array {v0, v1, v2, v3}, [Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->$VALUES:[Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->mRes:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->$VALUES:[Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    return-object v0
.end method
