#include <iostream>
#include <png.h>

int main(int argc, char **argv)
{
    unsigned char header[8];
    png_structp png_ptr;
    png_infop info_ptr;

    if (argc != 2)
    {
        std::cout << "usage: png-size-check <png_file>" << std::endl;
        return 1;
    }

    // open and parse a png file
    FILE *fp = fopen(argv[1], "rb");
    fread(header, 1, 8, fp);
    png_ptr = png_create_read_struct(PNG_LIBPNG_VER_STRING, NULL, NULL, NULL);
    info_ptr = png_create_info_struct(png_ptr);
    png_init_io(png_ptr, fp);
    png_set_sig_bytes(png_ptr, 8);
    png_read_info(png_ptr, info_ptr);

    std::cout << "width : " << png_get_image_width(png_ptr, info_ptr)
              << "\nheight: " << png_get_image_height(png_ptr, info_ptr)
              << std::endl;

    return 0;
}
