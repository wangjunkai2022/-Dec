.class public final Lcom/apk/jq0;
.super Ljava/lang/Object;
.source "ColorState.java"


# instance fields
.field public break:Ljava/lang/String;

.field public case:Ljava/lang/String;

.field public catch:Ljava/lang/String;

.field public class:Ljava/lang/String;

.field public const:Ljava/lang/String;

.field public do:Z

.field public else:Ljava/lang/String;

.field public final:Ljava/lang/String;

.field public for:Ljava/lang/String;

.field public goto:Ljava/lang/String;

.field public if:Ljava/lang/String;

.field public new:Ljava/lang/String;

.field public this:Ljava/lang/String;

.field public try:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/apk/jq0;->if:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/apk/jq0;->final:Ljava/lang/String;

    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/apk/jq0;->do:Z

    const-string p1, "#"

    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 32
    :cond_0
    new-instance p1, Lcom/apk/br0;

    const-string p2, "Default color cannot be a reference, when only default color is available!"

    invoke-direct {p1, p2}, Lcom/apk/br0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/jq0;->for:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/apk/jq0;->new:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/apk/jq0;->try:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/apk/jq0;->case:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/apk/jq0;->else:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/apk/jq0;->goto:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/apk/jq0;->this:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/apk/jq0;->break:Ljava/lang/String;

    .line 10
    iput-object p9, p0, Lcom/apk/jq0;->catch:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Lcom/apk/jq0;->class:Ljava/lang/String;

    .line 12
    iput-object p11, p0, Lcom/apk/jq0;->const:Ljava/lang/String;

    .line 13
    iput-object p12, p0, Lcom/apk/jq0;->final:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 17
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 18
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 19
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 20
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 21
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 22
    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 23
    invoke-static {p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 24
    invoke-static {p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/apk/jq0;->do:Z

    if-eqz p1, :cond_2

    const-string p1, "#"

    .line 25
    invoke-virtual {p12, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 26
    :cond_1
    new-instance p1, Lcom/apk/br0;

    const-string p2, "Default color cannot be a reference, when only default color is available!"

    invoke-direct {p1, p2}, Lcom/apk/br0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public static do(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "#"

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x9

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final if(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "#"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object v0, Lcom/apk/nq0;->this:Lcom/apk/nq0;

    .line 3
    iget-object v0, v0, Lcom/apk/nq0;->do:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apk/jq0;

    if-eqz p1, :cond_1

    .line 4
    iget-boolean v0, p1, Lcom/apk/jq0;->do:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p1, Lcom/apk/jq0;->final:Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
