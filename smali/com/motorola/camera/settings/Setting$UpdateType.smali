.class public final enum Lcom/motorola/camera/settings/Setting$UpdateType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/settings/Setting$UpdateType;

.field public static final enum NONE:Lcom/motorola/camera/settings/Setting$UpdateType;

.field public static final enum PARAM:Lcom/motorola/camera/settings/Setting$UpdateType;

.field public static final enum PARAM_AND_REOPEN:Lcom/motorola/camera/settings/Setting$UpdateType;

.field public static final enum PARAM_AND_RESTART:Lcom/motorola/camera/settings/Setting$UpdateType;

.field public static final enum PARAM_AND_ROI:Lcom/motorola/camera/settings/Setting$UpdateType;

.field public static final enum PERMISSION_CHECK:Lcom/motorola/camera/settings/Setting$UpdateType;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/motorola/camera/settings/Setting$UpdateType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/settings/Setting$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/settings/Setting$UpdateType;->NONE:Lcom/motorola/camera/settings/Setting$UpdateType;

    new-instance v1, Lcom/motorola/camera/settings/Setting$UpdateType;

    const-string v2, "PARAM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/settings/Setting$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM:Lcom/motorola/camera/settings/Setting$UpdateType;

    new-instance v2, Lcom/motorola/camera/settings/Setting$UpdateType;

    const-string v3, "PARAM_AND_RESTART"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/settings/Setting$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_RESTART:Lcom/motorola/camera/settings/Setting$UpdateType;

    new-instance v3, Lcom/motorola/camera/settings/Setting$UpdateType;

    const-string v4, "PARAM_AND_ROI"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/settings/Setting$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_ROI:Lcom/motorola/camera/settings/Setting$UpdateType;

    new-instance v4, Lcom/motorola/camera/settings/Setting$UpdateType;

    const-string v5, "PARAM_ROI_AND_CLOSE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/settings/Setting$UpdateType;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/motorola/camera/settings/Setting$UpdateType;

    const-string v6, "PERMISSION_CHECK"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/settings/Setting$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/settings/Setting$UpdateType;->PERMISSION_CHECK:Lcom/motorola/camera/settings/Setting$UpdateType;

    new-instance v6, Lcom/motorola/camera/settings/Setting$UpdateType;

    const-string v7, "PARAM_AND_REOPEN"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/settings/Setting$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_REOPEN:Lcom/motorola/camera/settings/Setting$UpdateType;

    filled-new-array/range {v0 .. v6}, [Lcom/motorola/camera/settings/Setting$UpdateType;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/settings/Setting$UpdateType;->$VALUES:[Lcom/motorola/camera/settings/Setting$UpdateType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/settings/Setting$UpdateType;
    .locals 1

    const-class v0, Lcom/motorola/camera/settings/Setting$UpdateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/settings/Setting$UpdateType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/settings/Setting$UpdateType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/Setting$UpdateType;->$VALUES:[Lcom/motorola/camera/settings/Setting$UpdateType;

    invoke-virtual {v0}, [Lcom/motorola/camera/settings/Setting$UpdateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/settings/Setting$UpdateType;

    return-object v0
.end method
