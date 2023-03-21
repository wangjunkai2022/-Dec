.class public Lcom/apk/import$for;
.super Lcom/apk/bg;
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
.field public final synthetic do:Lcom/apk/import$try;

.field public final synthetic if:Lcom/apk/import;


# direct methods
.method public constructor <init>(Lcom/apk/import;Lcom/apk/import$try;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/import$for;->if:Lcom/apk/import;

    iput-object p2, p0, Lcom/apk/import$for;->do:Lcom/apk/import$try;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/import$for;->if:Lcom/apk/import;

    .line 2
    iget-object p1, p1, Lcom/apk/import;->native:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/apk/import$for;->do:Lcom/apk/import$try;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Lcom/apk/import$try;->if()V

    :cond_1
    return-void
.end method
