.class public final enum Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum CONTACT:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum COPY:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum DIAL:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum EMAIL:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum EVENT:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum LOCATION:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum MATTER:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum MONOPOLY:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum MOTORDP:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum SEARCH:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum SHARE:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum SMS:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum WEB:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

.field public static final enum WIFI:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;


# instance fields
.field public final sCheckinCode:I

.field public final sRes:I

.field public final sText:I


# direct methods
.method public static constructor <clinit>()V
    .locals 27

    new-instance v6, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const-string v1, "CONTACT"

    const/4 v2, 0x0

    const v3, 0x7f12003e

    const v4, 0x7f0801c3

    sget-object v5, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->ADD_CONTACT:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v6, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->CONTACT:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    new-instance v1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const-string v8, "COPY"

    const/4 v9, 0x1

    const v10, 0x7f12003f

    const v11, 0x7f0801c4

    sget-object v12, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->COPY:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v1, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->COPY:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const-string v14, "DIAL"

    const/4 v15, 0x2

    const v16, 0x7f120040

    const v17, 0x7f0801a8

    sget-object v18, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->CALL:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v2, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->DIAL:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    new-instance v3, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const-string v8, "EMAIL"

    const/4 v9, 0x3

    const v10, 0x7f120041

    const v11, 0x7f0801fe

    sget-object v12, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->EMAIL:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v3, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->EMAIL:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    new-instance v4, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const-string v14, "EVENT"

    const/4 v15, 0x4

    const v16, 0x7f120042

    const v17, 0x7f0801a7

    sget-object v18, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->ADD_EVENT:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v4, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->EVENT:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    new-instance v5, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const-string v8, "LOCATION"

    const/4 v9, 0x5

    const v10, 0x7f120043

    const v11, 0x7f0801fa

    sget-object v12, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->MAP:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v5, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->LOCATION:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    new-instance v7, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const-string v14, "SEARCH"

    const/4 v15, 0x6

    const v16, 0x7f120048

    const v17, 0x7f080251

    sget-object v18, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->SEARCH:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v7, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SEARCH:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    new-instance v14, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const-string v9, "SHARE"

    const/4 v10, 0x7

    const v11, 0x7f120049

    const v12, 0x7f080255

    sget-object v13, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->SHARE:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v14, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SHARE:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    new-instance v8, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const-string v16, "SMS"

    const/16 v17, 0x8

    const v18, 0x7f12004a

    const v19, 0x7f0801ff

    sget-object v20, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->SMS:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object v15, v8

    invoke-direct/range {v15 .. v20}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v8, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SMS:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    new-instance v9, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const-string v22, "WEB"

    const/16 v23, 0x9

    const v24, 0x7f12004b

    const v25, 0x7f0801f6

    sget-object v26, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->WEB:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object/from16 v21, v9

    invoke-direct/range {v21 .. v26}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v9, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->WEB:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    new-instance v10, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const-string v16, "WIFI"

    const/16 v17, 0xa

    const v18, 0x7f12004c

    const v19, 0x7f080293

    sget-object v20, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->WIFI:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object v15, v10

    invoke-direct/range {v15 .. v20}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v10, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->WIFI:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    new-instance v11, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const-string v22, "MOTORDP"

    const/16 v23, 0xb

    const v24, 0x7f120046

    const v25, 0x7f080293

    sget-object v26, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->MOTORDP:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object/from16 v21, v11

    invoke-direct/range {v21 .. v26}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v11, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->MOTORDP:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    new-instance v12, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const-string v16, "MONOPOLY"

    const/16 v17, 0xc

    const v18, 0x7f120045

    const v19, 0x7f0801ce

    sget-object v20, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->MONOPOLY:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object v15, v12

    invoke-direct/range {v15 .. v20}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v12, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->MONOPOLY:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    new-instance v13, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    const-string v22, "MATTER"

    const/16 v23, 0xd

    const v24, 0x7f120044

    const v25, 0x7f0801ce

    sget-object v26, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->MATTER:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-object/from16 v21, v13

    invoke-direct/range {v21 .. v26}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;-><init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V

    sput-object v13, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->MATTER:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    move-object v0, v6

    move-object v6, v7

    move-object v7, v14

    filled-new-array/range {v0 .. v13}, [Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->$VALUES:[Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILcom/motorola/camera/analytics/AlwaysAwareData$Actions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->sText:I

    iput p4, p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->sRes:I

    iget p1, p5, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->checkInData:I

    iput p1, p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->sCheckinCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;
    .locals 1

    const-class v0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;
    .locals 1

    sget-object v0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->$VALUES:[Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-virtual {v0}, [Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    return-object v0
.end method
