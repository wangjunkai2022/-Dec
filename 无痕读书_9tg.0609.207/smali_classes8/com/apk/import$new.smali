.class public Lcom/apk/import$new;
.super Landroid/os/CountDownTimer;
.source "AdChapterUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/import;->break(Landroid/widget/TextView;Ljava/lang/String;Lcom/apk/import$try;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/widget/TextView;

.field public final synthetic for:Lcom/apk/import$try;

.field public final synthetic if:Ljava/lang/String;

.field public final synthetic new:Lcom/apk/import;


# direct methods
.method public constructor <init>(Lcom/apk/import;JJLandroid/widget/TextView;Ljava/lang/String;Lcom/apk/import$try;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/import$new;->new:Lcom/apk/import;

    iput-object p6, p0, Lcom/apk/import$new;->do:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/apk/import$new;->if:Ljava/lang/String;

    iput-object p8, p0, Lcom/apk/import$new;->for:Lcom/apk/import$try;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/import$new;->new:Lcom/apk/import;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/apk/import;->public:Z

    .line 3
    iget-object v2, p0, Lcom/apk/import$new;->if:Ljava/lang/String;

    .line 4
    iput-object v2, v0, Lcom/apk/import;->static:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/apk/import$new;->do:Landroid/widget/TextView;

    const v2, 0x7f100020

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/apk/import$new;->for:Lcom/apk/import$try;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0}, Lcom/apk/import$try;->for()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/apk/import$new;->new:Lcom/apk/import;

    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lcom/apk/import;->native:Landroid/os/CountDownTimer;

    return-void
.end method

.method public onTick(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/import$new;->do:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const p1, 0x7f100020

    invoke-static {p1, v1}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
