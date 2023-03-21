.class public final synthetic Lcom/apk/for;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbutterknife/Unbinder;


# static fields
.field public static final synthetic do:Lcom/apk/for;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/apk/for;

    invoke-direct {v0}, Lcom/apk/for;-><init>()V

    sput-object v0, Lcom/apk/for;->do:Lcom/apk/for;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final unbind()V
    .locals 0

    invoke-static {}, Lcom/apk/new;->do()V

    return-void
.end method
