.class public final enum Lcom/motorola/camera/fsm/camera/states/Main$PermissionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/fsm/camera/states/Main$PermissionType;

.field public static final enum GRANTED:Lcom/motorola/camera/fsm/camera/states/Main$PermissionType;

.field public static final enum REQUIRED:Lcom/motorola/camera/fsm/camera/states/Main$PermissionType;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/Main$PermissionType;

    const-string v1, "REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/states/Main$PermissionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/Main$PermissionType;->REQUIRED:Lcom/motorola/camera/fsm/camera/states/Main$PermissionType;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/Main$PermissionType;

    const-string v2, "GRANTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/fsm/camera/states/Main$PermissionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/fsm/camera/states/Main$PermissionType;->GRANTED:Lcom/motorola/camera/fsm/camera/states/Main$PermissionType;

    filled-new-array {v0, v1}, [Lcom/motorola/camera/fsm/camera/states/Main$PermissionType;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/Main$PermissionType;->$VALUES:[Lcom/motorola/camera/fsm/camera/states/Main$PermissionType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/states/Main$PermissionType;
    .locals 1

    const-class v0, Lcom/motorola/camera/fsm/camera/states/Main$PermissionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/Main$PermissionType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/fsm/camera/states/Main$PermissionType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Main$PermissionType;->$VALUES:[Lcom/motorola/camera/fsm/camera/states/Main$PermissionType;

    invoke-virtual {v0}, [Lcom/motorola/camera/fsm/camera/states/Main$PermissionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/fsm/camera/states/Main$PermissionType;

    return-object v0
.end method