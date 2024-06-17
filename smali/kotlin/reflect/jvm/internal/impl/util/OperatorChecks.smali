.class public abstract Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpt;
.source "SourceFile"


# static fields
.field public static final checks:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 34

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    move-object v0, v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->GET:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const/4 v15, 0x2

    new-array v3, v15, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    sget-object v19, Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck$MemberOrExtension;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck$MemberOrExtension;

    const/4 v14, 0x0

    aput-object v19, v3, v14

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;

    const/4 v13, 0x1

    invoke-direct {v4, v13, v13}, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;-><init>(II)V

    aput-object v4, v3, v13

    invoke-direct {v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    move-object v1, v2

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->SET:Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-array v4, v15, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v19, v4, v14

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;

    invoke-direct {v5, v15, v13}, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;-><init>(II)V

    aput-object v5, v4, v13

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks$checks$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks$checks$1;

    invoke-direct {v2, v3, v4, v5}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/jvm/functions/Function1;)V

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    move-object v2, v3

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->GET_VALUE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const/4 v12, 0x4

    new-array v5, v12, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v19, v5, v14

    sget-object v18, Lkotlin/reflect/jvm/internal/impl/util/NoDefaultAndVarargsCheck;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/NoDefaultAndVarargsCheck;

    aput-object v18, v5, v13

    new-instance v6, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;

    invoke-direct {v6, v15, v13}, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;-><init>(II)V

    aput-object v6, v5, v15

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/util/IsKPropertyCheck;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/IsKPropertyCheck;

    const/4 v11, 0x3

    aput-object v6, v5, v11

    invoke-direct {v3, v4, v5}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    move-object v3, v4

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->SET_VALUE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-array v7, v12, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v19, v7, v14

    aput-object v18, v7, v13

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;

    invoke-direct {v8, v11, v13}, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;-><init>(II)V

    aput-object v8, v7, v15

    aput-object v6, v7, v11

    invoke-direct {v4, v5, v7}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    move-object v4, v5

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->PROVIDE_DELEGATE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-array v8, v12, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v19, v8, v14

    aput-object v18, v8, v13

    new-instance v9, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;

    invoke-direct {v9, v15, v14}, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$Equals;-><init>(II)V

    aput-object v9, v8, v15

    aput-object v6, v8, v11

    invoke-direct {v5, v7, v8}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v6, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    move-object v5, v6

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->INVOKE:Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-array v8, v13, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v19, v8, v14

    invoke-direct {v6, v7, v8}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    move-object v6, v7

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->CONTAINS:Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-array v9, v12, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v19, v9, v14

    sget-object v20, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$SingleValueParameter;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$SingleValueParameter;

    aput-object v20, v9, v13

    aput-object v18, v9, v15

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsBoolean;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsBoolean;

    aput-object v10, v9, v11

    invoke-direct {v7, v8, v9}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    move-object v7, v8

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->ITERATOR:Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-array v12, v15, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v19, v12, v14

    sget-object v21, Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$NoValueParameters;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/ValueParameterCountCheck$NoValueParameters;

    aput-object v21, v12, v13

    invoke-direct {v8, v9, v12}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v9, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    move-object v8, v9

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->NEXT:Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-array v11, v15, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v19, v11, v14

    aput-object v21, v11, v13

    invoke-direct {v9, v12, v11}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v11, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    move-object v9, v11

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->HAS_NEXT:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const/4 v15, 0x3

    move-object/from16 v22, v0

    new-array v0, v15, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v19, v0, v14

    aput-object v21, v0, v13

    const/16 v17, 0x2

    aput-object v10, v0, v17

    invoke-direct {v11, v12, v0}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    move-object v10, v0

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->RANGE_TO:Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-array v12, v15, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v19, v12, v14

    aput-object v20, v12, v13

    aput-object v18, v12, v17

    invoke-direct {v0, v11, v12}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    move-object v11, v0

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->RANGE_UNTIL:Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-object/from16 v23, v1

    new-array v1, v15, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v19, v1, v14

    aput-object v20, v1, v13

    aput-object v18, v1, v17

    invoke-direct {v0, v12, v1}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    const/4 v1, 0x4

    move-object v12, v0

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->EQUALS:Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-array v1, v13, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    sget-object v16, Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck$Member;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck$Member;

    aput-object v16, v1, v14

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks$checks$2;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks$checks$2;

    invoke-direct {v0, v15, v1, v13}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    const/4 v1, 0x1

    move-object v13, v0

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->COMPARE_TO:Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-object/from16 v25, v2

    const/4 v1, 0x4

    new-array v2, v1, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v19, v2, v14

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsInt;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsInt;

    move-object/from16 v26, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    aput-object v20, v2, v1

    const/4 v1, 0x3

    aput-object v18, v2, v1

    invoke-direct {v0, v15, v2}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    move v2, v14

    move-object v14, v0

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->BINARY_OPERATION_NAMES:Ljava/util/Set;

    move-object/from16 v24, v4

    new-array v4, v1, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v19, v4, v2

    aput-object v20, v4, v3

    const/16 v16, 0x2

    aput-object v18, v4, v16

    invoke-direct {v0, v15, v4}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Ljava/util/Set;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    move v4, v1

    move/from16 v1, v16

    move-object v15, v0

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->SIMPLE_UNARY_OPERATION_NAMES:Ljava/util/Set;

    move-object/from16 v27, v5

    new-array v5, v1, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v19, v5, v2

    aput-object v21, v5, v3

    invoke-direct {v0, v4, v5}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Ljava/util/Set;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    move-object/from16 v16, v0

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->INC:Lkotlin/reflect/jvm/internal/impl/name/Name;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->DEC:Lkotlin/reflect/jvm/internal/impl/name/Name;

    filled-new-array {v4, v5}, [Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/JvmClassMappingKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    new-array v5, v3, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v19, v5, v2

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks$checks$3;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks$checks$3;

    invoke-direct {v0, v4, v5, v1}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Ljava/util/Collection;[Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    move-object/from16 v17, v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->ASSIGNMENT_OPERATIONS:Ljava/util/Set;

    const/4 v4, 0x4

    new-array v4, v4, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v19, v4, v2

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsUnit;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsUnit;

    aput-object v5, v4, v3

    const/4 v5, 0x2

    aput-object v20, v4, v5

    const/16 v20, 0x3

    aput-object v18, v4, v20

    invoke-direct {v0, v1, v4}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Ljava/util/Set;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    new-instance v28, Lkotlin/reflect/jvm/internal/impl/util/Checks;

    move-object/from16 v18, v28

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/util/OperatorNameConventions;->COMPONENT_REGEX:Lkotlin/text/Regex;

    new-array v1, v5, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    aput-object v19, v1, v2

    aput-object v21, v1, v3

    sget-object v32, Lkotlin/reflect/jvm/internal/impl/util/Checks$3;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/Checks$3;

    const-string v2, "regex"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v29, 0x0

    const/16 v31, 0x0

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v33, v1

    check-cast v33, [Lkotlin/reflect/jvm/internal/impl/util/Check;

    move-object/from16 v30, v0

    invoke-direct/range {v28 .. v33}, Lkotlin/reflect/jvm/internal/impl/util/Checks;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/text/Regex;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;[Lkotlin/reflect/jvm/internal/impl/util/Check;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v4, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move-object/from16 v5, v27

    filled-new-array/range {v0 .. v18}, [Lkotlin/reflect/jvm/internal/impl/util/Checks;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/OperatorChecks;->checks:Ljava/util/List;

    return-void
.end method
