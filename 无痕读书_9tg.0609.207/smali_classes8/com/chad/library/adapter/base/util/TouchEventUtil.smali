.class public Lcom/chad/library/adapter/base/util/TouchEventUtil;
.super Ljava/lang/Object;
.source "TouchEventUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTouchAction(I)Ljava/lang/String;
    .locals 2

    const-string v0, "Unknow:id="

    .line 1
    invoke-static {v0, p0}, Lcom/apk/goto;->implements(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ACTION_OUTSIDE"

    goto :goto_0

    :cond_1
    const-string v0, "ACTION_CANCEL"

    goto :goto_0

    :cond_2
    const-string v0, "ACTION_MOVE"

    goto :goto_0

    :cond_3
    const-string v0, "ACTION_UP"

    goto :goto_0

    :cond_4
    const-string v0, "ACTION_DOWN"

    :goto_0
    return-object v0
.end method
