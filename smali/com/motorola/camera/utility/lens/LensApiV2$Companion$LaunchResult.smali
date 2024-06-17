.class public final enum Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;

.field public static final enum RESULT_OK:Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;

.field public static final enum RESULT_UNKNOWN_ERROR:Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;


# instance fields
.field public final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;

    const-string v1, "RESULT_OK"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;->RESULT_OK:Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;

    new-instance v1, Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;

    const-string v3, "RESULT_CANCELLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;

    const-string v3, "RESULT_UNKNOWN_ERROR"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;->RESULT_UNKNOWN_ERROR:Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;

    new-instance v3, Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;

    const-string v4, "RESULT_MISSING_PACKAGE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;

    const-string v5, "RESULT_UNKNOWN_PACKAGE"

    const/4 v6, 0x4

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;

    const-string v6, "RESULT_UNSUPPORTED_LOCALE"

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;

    const-string v7, "RESULT_INCOMPATIBLE_DEVICE"

    const/4 v9, 0x7

    invoke-direct {v6, v7, v8, v9}, Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;

    const-string v8, "RESULT_DEVICE_LOCKED"

    const/16 v10, 0x8

    invoke-direct {v7, v8, v9, v10}, Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;-><init>(Ljava/lang/String;II)V

    filled-new-array/range {v0 .. v7}, [Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;->$VALUES:[Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;
    .locals 1

    const-class v0, Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;
    .locals 1

    sget-object v0, Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;->$VALUES:[Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;

    return-object v0
.end method
