.class public abstract Lcom/apk/cv;
.super Ljava/lang/Object;
.source "PopupAnimator.java"


# instance fields
.field public do:Landroid/view/View;

.field public if:Lcom/apk/ov;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/apk/cv;->do:Landroid/view/View;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/apk/cv;->if:Lcom/apk/ov;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/apk/ov;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/apk/cv;->do:Landroid/view/View;

    .line 7
    iput-object p2, p0, Lcom/apk/cv;->if:Lcom/apk/ov;

    return-void
.end method


# virtual methods
.method public abstract do()V
.end method

.method public abstract for()V
.end method

.method public abstract if()V
.end method
