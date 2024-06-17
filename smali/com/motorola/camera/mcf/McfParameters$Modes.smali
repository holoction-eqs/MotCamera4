.class public final enum Lcom/motorola/camera/mcf/McfParameters$Modes;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/mcf/McfParameters$Modes;

.field public static final enum AUTO:Lcom/motorola/camera/mcf/McfParameters$Modes;

.field public static final enum OFF:Lcom/motorola/camera/mcf/McfParameters$Modes;

.field public static final enum ON:Lcom/motorola/camera/mcf/McfParameters$Modes;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/motorola/camera/mcf/McfParameters$Modes;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/McfParameters$Modes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/McfParameters$Modes;->AUTO:Lcom/motorola/camera/mcf/McfParameters$Modes;

    new-instance v1, Lcom/motorola/camera/mcf/McfParameters$Modes;

    const-string v2, "OFF"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/mcf/McfParameters$Modes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/mcf/McfParameters$Modes;->OFF:Lcom/motorola/camera/mcf/McfParameters$Modes;

    new-instance v2, Lcom/motorola/camera/mcf/McfParameters$Modes;

    const-string v3, "ON"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/mcf/McfParameters$Modes;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/McfParameters$Modes;->ON:Lcom/motorola/camera/mcf/McfParameters$Modes;

    filled-new-array {v0, v1, v2}, [Lcom/motorola/camera/mcf/McfParameters$Modes;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/mcf/McfParameters$Modes;->$VALUES:[Lcom/motorola/camera/mcf/McfParameters$Modes;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/McfParameters$Modes;
    .locals 1

    const-class v0, Lcom/motorola/camera/mcf/McfParameters$Modes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/McfParameters$Modes;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/mcf/McfParameters$Modes;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/McfParameters$Modes;->$VALUES:[Lcom/motorola/camera/mcf/McfParameters$Modes;

    invoke-virtual {v0}, [Lcom/motorola/camera/mcf/McfParameters$Modes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/mcf/McfParameters$Modes;

    return-object v0
.end method


# virtual methods
.method public final getJsonValue()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
