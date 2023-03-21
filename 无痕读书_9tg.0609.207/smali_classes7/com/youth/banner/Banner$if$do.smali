.class public Lcom/youth/banner/Banner$if$do;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youth/banner/Banner$if;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic if:Lcom/youth/banner/Banner$if;


# direct methods
.method public constructor <init>(Lcom/youth/banner/Banner$if;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/youth/banner/Banner$if$do;->if:Lcom/youth/banner/Banner$if;

    iput p2, p0, Lcom/youth/banner/Banner$if$do;->do:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/youth/banner/Banner$if$do;->if:Lcom/youth/banner/Banner$if;

    iget-object p1, p1, Lcom/youth/banner/Banner$if;->do:Lcom/youth/banner/Banner;

    .line 2
    iget-object v0, p1, Lcom/youth/banner/Banner;->c:Lcom/apk/cc0;

    .line 3
    iget v1, p0, Lcom/youth/banner/Banner$if$do;->do:I

    invoke-virtual {p1, v1}, Lcom/youth/banner/Banner;->goto(I)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/apk/cc0;->do(I)V

    return-void
.end method
