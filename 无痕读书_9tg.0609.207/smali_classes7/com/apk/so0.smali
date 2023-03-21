.class public abstract enum Lcom/apk/so0;
.super Ljava/lang/Enum;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/so0$default;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/so0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum break:Lcom/apk/so0;

.field public static final enum case:Lcom/apk/so0;

.field public static final enum catch:Lcom/apk/so0;

.field public static final enum class:Lcom/apk/so0;

.field public static final enum const:Lcom/apk/so0;

.field public static final default:Ljava/lang/String;

.field public static final enum do:Lcom/apk/so0;

.field public static final enum else:Lcom/apk/so0;

.field public static final synthetic extends:[Lcom/apk/so0;

.field public static final enum final:Lcom/apk/so0;

.field public static final enum for:Lcom/apk/so0;

.field public static final enum goto:Lcom/apk/so0;

.field public static final enum if:Lcom/apk/so0;

.field public static final enum import:Lcom/apk/so0;

.field public static final enum native:Lcom/apk/so0;

.field public static final enum new:Lcom/apk/so0;

.field public static final enum public:Lcom/apk/so0;

.field public static final enum return:Lcom/apk/so0;

.field public static final enum static:Lcom/apk/so0;

.field public static final enum super:Lcom/apk/so0;

.field public static final enum switch:Lcom/apk/so0;

.field public static final enum this:Lcom/apk/so0;

.field public static final enum throw:Lcom/apk/so0;

.field public static final enum throws:Lcom/apk/so0;

.field public static final enum try:Lcom/apk/so0;

.field public static final enum while:Lcom/apk/so0;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/apk/so0$catch;

    const-string v1, "Initial"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/so0$catch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/so0;->do:Lcom/apk/so0;

    .line 2
    new-instance v0, Lcom/apk/so0$while;

    const-string v1, "BeforeHtml"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apk/so0$while;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/so0;->if:Lcom/apk/so0;

    .line 3
    new-instance v0, Lcom/apk/so0$import;

    const-string v1, "BeforeHead"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apk/so0$import;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/so0;->for:Lcom/apk/so0;

    .line 4
    new-instance v0, Lcom/apk/so0$native;

    const-string v1, "InHead"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/apk/so0$native;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/so0;->new:Lcom/apk/so0;

    .line 5
    new-instance v0, Lcom/apk/so0$public;

    const-string v1, "InHeadNoscript"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/apk/so0$public;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/so0;->try:Lcom/apk/so0;

    .line 6
    new-instance v0, Lcom/apk/so0$return;

    const-string v1, "AfterHead"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/apk/so0$return;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/so0;->case:Lcom/apk/so0;

    .line 7
    new-instance v0, Lcom/apk/so0$static;

    const-string v1, "InBody"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/apk/so0$static;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/so0;->else:Lcom/apk/so0;

    .line 8
    new-instance v0, Lcom/apk/so0$switch;

    const-string v1, "Text"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/apk/so0$switch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/so0;->goto:Lcom/apk/so0;

    .line 9
    new-instance v0, Lcom/apk/so0$throws;

    const-string v1, "InTable"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/apk/so0$throws;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/so0;->this:Lcom/apk/so0;

    .line 10
    new-instance v0, Lcom/apk/so0$do;

    const-string v1, "InTableText"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/apk/so0$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/so0;->break:Lcom/apk/so0;

    .line 11
    new-instance v0, Lcom/apk/so0$if;

    const-string v1, "InCaption"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/apk/so0$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/so0;->catch:Lcom/apk/so0;

    .line 12
    new-instance v0, Lcom/apk/so0$for;

    const-string v1, "InColumnGroup"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/apk/so0$for;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/so0;->class:Lcom/apk/so0;

    .line 13
    new-instance v0, Lcom/apk/so0$new;

    const-string v1, "InTableBody"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/apk/so0$new;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/so0;->const:Lcom/apk/so0;

    .line 14
    new-instance v0, Lcom/apk/so0$try;

    const-string v1, "InRow"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/apk/so0$try;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/so0;->final:Lcom/apk/so0;

    .line 15
    new-instance v0, Lcom/apk/so0$case;

    const-string v1, "InCell"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/apk/so0$case;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/so0;->super:Lcom/apk/so0;

    .line 16
    new-instance v0, Lcom/apk/so0$else;

    const-string v1, "InSelect"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/apk/so0$else;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/so0;->throw:Lcom/apk/so0;

    .line 17
    new-instance v0, Lcom/apk/so0$goto;

    const-string v1, "InSelectInTable"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/apk/so0$goto;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/so0;->while:Lcom/apk/so0;

    .line 18
    new-instance v0, Lcom/apk/so0$this;

    const-string v1, "InTemplate"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/apk/so0$this;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/so0;->import:Lcom/apk/so0;

    .line 19
    new-instance v0, Lcom/apk/so0$break;

    const-string v1, "AfterBody"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/apk/so0$break;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/so0;->native:Lcom/apk/so0;

    .line 20
    new-instance v0, Lcom/apk/so0$class;

    const-string v1, "InFrameset"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/apk/so0$class;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/so0;->public:Lcom/apk/so0;

    .line 21
    new-instance v0, Lcom/apk/so0$const;

    const-string v1, "AfterFrameset"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lcom/apk/so0$const;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/so0;->return:Lcom/apk/so0;

    .line 22
    new-instance v0, Lcom/apk/so0$final;

    const-string v1, "AfterAfterBody"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Lcom/apk/so0$final;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/so0;->static:Lcom/apk/so0;

    .line 23
    new-instance v0, Lcom/apk/so0$super;

    const-string v1, "AfterAfterFrameset"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15}, Lcom/apk/so0$super;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/so0;->switch:Lcom/apk/so0;

    .line 24
    new-instance v0, Lcom/apk/so0$throw;

    const-string v1, "ForeignContent"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15}, Lcom/apk/so0$throw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/so0;->throws:Lcom/apk/so0;

    const/16 v1, 0x18

    new-array v1, v1, [Lcom/apk/so0;

    .line 25
    sget-object v15, Lcom/apk/so0;->do:Lcom/apk/so0;

    aput-object v15, v1, v2

    sget-object v15, Lcom/apk/so0;->if:Lcom/apk/so0;

    aput-object v15, v1, v3

    sget-object v3, Lcom/apk/so0;->for:Lcom/apk/so0;

    aput-object v3, v1, v4

    sget-object v3, Lcom/apk/so0;->new:Lcom/apk/so0;

    aput-object v3, v1, v5

    sget-object v3, Lcom/apk/so0;->try:Lcom/apk/so0;

    aput-object v3, v1, v6

    sget-object v3, Lcom/apk/so0;->case:Lcom/apk/so0;

    aput-object v3, v1, v7

    sget-object v3, Lcom/apk/so0;->else:Lcom/apk/so0;

    aput-object v3, v1, v8

    sget-object v3, Lcom/apk/so0;->goto:Lcom/apk/so0;

    aput-object v3, v1, v9

    sget-object v3, Lcom/apk/so0;->this:Lcom/apk/so0;

    aput-object v3, v1, v10

    sget-object v3, Lcom/apk/so0;->break:Lcom/apk/so0;

    aput-object v3, v1, v11

    sget-object v3, Lcom/apk/so0;->catch:Lcom/apk/so0;

    aput-object v3, v1, v12

    sget-object v3, Lcom/apk/so0;->class:Lcom/apk/so0;

    aput-object v3, v1, v13

    sget-object v3, Lcom/apk/so0;->const:Lcom/apk/so0;

    aput-object v3, v1, v14

    sget-object v3, Lcom/apk/so0;->final:Lcom/apk/so0;

    const/16 v4, 0xd

    aput-object v3, v1, v4

    sget-object v3, Lcom/apk/so0;->super:Lcom/apk/so0;

    const/16 v4, 0xe

    aput-object v3, v1, v4

    sget-object v3, Lcom/apk/so0;->throw:Lcom/apk/so0;

    const/16 v4, 0xf

    aput-object v3, v1, v4

    sget-object v3, Lcom/apk/so0;->while:Lcom/apk/so0;

    const/16 v4, 0x10

    aput-object v3, v1, v4

    sget-object v3, Lcom/apk/so0;->import:Lcom/apk/so0;

    const/16 v4, 0x11

    aput-object v3, v1, v4

    sget-object v3, Lcom/apk/so0;->native:Lcom/apk/so0;

    const/16 v4, 0x12

    aput-object v3, v1, v4

    sget-object v3, Lcom/apk/so0;->public:Lcom/apk/so0;

    const/16 v4, 0x13

    aput-object v3, v1, v4

    sget-object v3, Lcom/apk/so0;->return:Lcom/apk/so0;

    const/16 v4, 0x14

    aput-object v3, v1, v4

    sget-object v3, Lcom/apk/so0;->static:Lcom/apk/so0;

    const/16 v4, 0x15

    aput-object v3, v1, v4

    sget-object v3, Lcom/apk/so0;->switch:Lcom/apk/so0;

    const/16 v4, 0x16

    aput-object v3, v1, v4

    const/16 v3, 0x17

    aput-object v0, v1, v3

    .line 26
    sput-object v1, Lcom/apk/so0;->extends:[Lcom/apk/so0;

    .line 27
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apk/so0;->default:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/apk/so0$catch;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static do(Lcom/apk/yo0;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/yo0;->do()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/apk/yo0$for;

    .line 3
    iget-object p0, p0, Lcom/apk/yo0$for;->if:Ljava/lang/String;

    .line 4
    invoke-static {p0}, Lcom/apk/bo0;->try(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static if(Lcom/apk/yo0$goto;Lcom/apk/ro0;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/apk/cp0;->for:Lcom/apk/ap0;

    sget-object v1, Lcom/apk/bp0;->try:Lcom/apk/bp0;

    .line 2
    iput-object v1, v0, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    .line 3
    iget-object v0, p1, Lcom/apk/ro0;->class:Lcom/apk/so0;

    iput-object v0, p1, Lcom/apk/ro0;->const:Lcom/apk/so0;

    .line 4
    sget-object v0, Lcom/apk/so0;->goto:Lcom/apk/so0;

    .line 5
    iput-object v0, p1, Lcom/apk/ro0;->class:Lcom/apk/so0;

    .line 6
    invoke-virtual {p1, p0}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$goto;)Lcom/apk/jo0;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apk/so0;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/so0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/so0;

    return-object p0
.end method

.method public static values()[Lcom/apk/so0;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/so0;->extends:[Lcom/apk/so0;

    invoke-virtual {v0}, [Lcom/apk/so0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/so0;

    return-object v0
.end method


# virtual methods
.method public abstract for(Lcom/apk/yo0;Lcom/apk/ro0;)Z
.end method
