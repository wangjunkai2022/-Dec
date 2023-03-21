.class public final enum Lcom/apk/ov;
.super Ljava/lang/Enum;
.source "PopupAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/ov;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum break:Lcom/apk/ov;

.field public static final enum case:Lcom/apk/ov;

.field public static final enum catch:Lcom/apk/ov;

.field public static final enum class:Lcom/apk/ov;

.field public static final enum const:Lcom/apk/ov;

.field public static final enum do:Lcom/apk/ov;

.field public static final enum else:Lcom/apk/ov;

.field public static final enum final:Lcom/apk/ov;

.field public static final enum for:Lcom/apk/ov;

.field public static final enum goto:Lcom/apk/ov;

.field public static final enum if:Lcom/apk/ov;

.field public static final enum import:Lcom/apk/ov;

.field public static final enum native:Lcom/apk/ov;

.field public static final enum new:Lcom/apk/ov;

.field public static final enum public:Lcom/apk/ov;

.field public static final enum return:Lcom/apk/ov;

.field public static final enum static:Lcom/apk/ov;

.field public static final enum super:Lcom/apk/ov;

.field public static final synthetic switch:[Lcom/apk/ov;

.field public static final enum this:Lcom/apk/ov;

.field public static final enum throw:Lcom/apk/ov;

.field public static final enum try:Lcom/apk/ov;

.field public static final enum while:Lcom/apk/ov;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/apk/ov;

    const-string v1, "ScaleAlphaFromCenter"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/ov;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ov;->do:Lcom/apk/ov;

    .line 2
    new-instance v0, Lcom/apk/ov;

    const-string v1, "ScaleAlphaFromLeftTop"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/apk/ov;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ov;->if:Lcom/apk/ov;

    .line 3
    new-instance v0, Lcom/apk/ov;

    const-string v1, "ScaleAlphaFromRightTop"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/apk/ov;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ov;->for:Lcom/apk/ov;

    .line 4
    new-instance v0, Lcom/apk/ov;

    const-string v1, "ScaleAlphaFromLeftBottom"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/apk/ov;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ov;->new:Lcom/apk/ov;

    .line 5
    new-instance v0, Lcom/apk/ov;

    const-string v1, "ScaleAlphaFromRightBottom"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/apk/ov;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ov;->try:Lcom/apk/ov;

    .line 6
    new-instance v0, Lcom/apk/ov;

    const-string v1, "TranslateAlphaFromLeft"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/apk/ov;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ov;->case:Lcom/apk/ov;

    .line 7
    new-instance v0, Lcom/apk/ov;

    const-string v1, "TranslateAlphaFromRight"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/apk/ov;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ov;->else:Lcom/apk/ov;

    .line 8
    new-instance v0, Lcom/apk/ov;

    const-string v1, "TranslateAlphaFromTop"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/apk/ov;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ov;->goto:Lcom/apk/ov;

    .line 9
    new-instance v0, Lcom/apk/ov;

    const-string v1, "TranslateAlphaFromBottom"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/apk/ov;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ov;->this:Lcom/apk/ov;

    .line 10
    new-instance v0, Lcom/apk/ov;

    const-string v1, "TranslateFromLeft"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/apk/ov;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ov;->break:Lcom/apk/ov;

    .line 11
    new-instance v0, Lcom/apk/ov;

    const-string v1, "TranslateFromRight"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/apk/ov;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ov;->catch:Lcom/apk/ov;

    .line 12
    new-instance v0, Lcom/apk/ov;

    const-string v1, "TranslateFromTop"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/apk/ov;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ov;->class:Lcom/apk/ov;

    .line 13
    new-instance v0, Lcom/apk/ov;

    const-string v1, "TranslateFromBottom"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/apk/ov;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ov;->const:Lcom/apk/ov;

    .line 14
    new-instance v0, Lcom/apk/ov;

    const-string v1, "ScrollAlphaFromLeft"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/apk/ov;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ov;->final:Lcom/apk/ov;

    .line 15
    new-instance v0, Lcom/apk/ov;

    const-string v1, "ScrollAlphaFromLeftTop"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/apk/ov;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ov;->super:Lcom/apk/ov;

    .line 16
    new-instance v0, Lcom/apk/ov;

    const-string v1, "ScrollAlphaFromTop"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/apk/ov;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ov;->throw:Lcom/apk/ov;

    .line 17
    new-instance v0, Lcom/apk/ov;

    const-string v1, "ScrollAlphaFromRightTop"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/apk/ov;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ov;->while:Lcom/apk/ov;

    .line 18
    new-instance v0, Lcom/apk/ov;

    const-string v1, "ScrollAlphaFromRight"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/apk/ov;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ov;->import:Lcom/apk/ov;

    .line 19
    new-instance v0, Lcom/apk/ov;

    const-string v1, "ScrollAlphaFromRightBottom"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/apk/ov;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ov;->native:Lcom/apk/ov;

    .line 20
    new-instance v0, Lcom/apk/ov;

    const-string v1, "ScrollAlphaFromBottom"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/apk/ov;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ov;->public:Lcom/apk/ov;

    .line 21
    new-instance v0, Lcom/apk/ov;

    const-string v1, "ScrollAlphaFromLeftBottom"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lcom/apk/ov;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ov;->return:Lcom/apk/ov;

    .line 22
    new-instance v0, Lcom/apk/ov;

    const-string v1, "NoAnimation"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Lcom/apk/ov;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apk/ov;->static:Lcom/apk/ov;

    const/16 v1, 0x16

    new-array v1, v1, [Lcom/apk/ov;

    .line 23
    sget-object v16, Lcom/apk/ov;->do:Lcom/apk/ov;

    aput-object v16, v1, v2

    sget-object v2, Lcom/apk/ov;->if:Lcom/apk/ov;

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/ov;->for:Lcom/apk/ov;

    aput-object v2, v1, v4

    sget-object v2, Lcom/apk/ov;->new:Lcom/apk/ov;

    aput-object v2, v1, v5

    sget-object v2, Lcom/apk/ov;->try:Lcom/apk/ov;

    aput-object v2, v1, v6

    sget-object v2, Lcom/apk/ov;->case:Lcom/apk/ov;

    aput-object v2, v1, v7

    sget-object v2, Lcom/apk/ov;->else:Lcom/apk/ov;

    aput-object v2, v1, v8

    sget-object v2, Lcom/apk/ov;->goto:Lcom/apk/ov;

    aput-object v2, v1, v9

    sget-object v2, Lcom/apk/ov;->this:Lcom/apk/ov;

    aput-object v2, v1, v10

    sget-object v2, Lcom/apk/ov;->break:Lcom/apk/ov;

    aput-object v2, v1, v11

    sget-object v2, Lcom/apk/ov;->catch:Lcom/apk/ov;

    aput-object v2, v1, v12

    sget-object v2, Lcom/apk/ov;->class:Lcom/apk/ov;

    aput-object v2, v1, v13

    sget-object v2, Lcom/apk/ov;->const:Lcom/apk/ov;

    aput-object v2, v1, v14

    sget-object v2, Lcom/apk/ov;->final:Lcom/apk/ov;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/ov;->super:Lcom/apk/ov;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/ov;->throw:Lcom/apk/ov;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/ov;->while:Lcom/apk/ov;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/ov;->import:Lcom/apk/ov;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/ov;->native:Lcom/apk/ov;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/ov;->public:Lcom/apk/ov;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/ov;->return:Lcom/apk/ov;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/apk/ov;->switch:[Lcom/apk/ov;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apk/ov;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/ov;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/ov;

    return-object p0
.end method

.method public static values()[Lcom/apk/ov;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/ov;->switch:[Lcom/apk/ov;

    invoke-virtual {v0}, [Lcom/apk/ov;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/ov;

    return-object v0
.end method
